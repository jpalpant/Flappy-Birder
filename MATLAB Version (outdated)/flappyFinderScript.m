clear;

whiteMarkInserter = vision.MarkerInserter('Size', 30, ...
    'Fill', true, 'FillColor', 'White', 'Opacity', 0.5);
whiteBoxIns = vision.ShapeInserter('Shape', 'Rectangles', 'Fill', true, 'FillColor', 'White', 'Opacity', 0.5)
blackLineIns = vision.ShapeInserter('Shape', 'Lines', 'LineWidth', 5);
videoMaker = vision.VideoFileWriter('Filename', 'ProcessedFlappyGame.mp4', 'FileFormat', 'MPEG4', 'VideoCompressor', 'MJPEG Compressor');

pipeWidth = 120;
pipeLeftOffset = 20;
pipeVertOffset = 80;
flappyHorizPos = 209;

flappyBird = imread('flappyBirdShot.png');  %Official screencaptures to match
flappyPipe = imread('flappyPipeCorner.png');
tstack = TIFFStack('flappygame11.tiff');
xStepPixels = uint32(3);
nextPipeCheck = 301;
pipeLocs = uint32([]);
jumpsFromHere = [];
tic;
startFrame = 1;
for frameNum = startFrame:tstack.size(3);
    frame = tstack(:, :, frameNum);
    flappyLoc = findFlappy(frame, flappyBird, 0.15);
    if(~isempty(flappyLoc)) 
        flappyHeight(frameNum-startFrame+1) = flappyLoc(2); 
    end;
    
    %Check for pipes, but only periodically
    if(frameNum == nextPipeCheck) 
        pipesFound = findPipeCorners(frame, flappyPipe, 0.75);
        if(isempty(pipesFound))
            nextPipeCheck = nextPipeCheck+10;
        else  %you find a new pipe!
            pipeLocs(end+1, :) = pipesFound; %add the pipe
       
            nextPipeCheck = nextPipeCheck+75; %wait a long time before you check again
        end
    end
    
    if(~isempty(pipeLocs))
        %Slide all the pipes you've found left one frame
        pipeLocs(:,1) = pipeLocs(:,1) - xStepPixels;
        
        %Remove any pipes on the left border
        pipeLocs = pipeLocs(pipeLocs(:,1)~=0, :);
    end
    
    if(isempty(jumpsFromHere)) %determine the path to clear the pipes
        fprintf('Processing frame %d\n', frameNum)

        if(isempty(pipeLocs)) 
            pipeToClear = [];
            fprintf('Avoiding no pipes, default path\n')
        else
            pipeToClear = pipeLocs(end,:);
            fprintf('Avoiding pipe at [%d %d]\n', pipeToClear(1), pipeToClear(2))
        end
        if(length(flappyHeight<10) )
            flappyV0 = 0;
        else
            flappyV0 = mean(derivative_dwt(double(flappyHeight(end-10:end)), 'spl', 3, 1, 1));
        end
        flappyX0 = [flappyHorizPos, flappyHeight(end)];
        fprintf('Flappy is at [%d %d]\n', flappyX0(1), flappyX0(2));
        jumpsFromHere = findFlappyPath(flappyX0, flappyV0, pipeToClear);
        [x, y] = evalFlappyPath(flappyX0, flappyV0, jumpsFromHere);
    end
    
    if(~isempty(flappyLoc))
        for j = 1:size(flappyLoc, 1)    
            frame = step(whiteMarkInserter, frame, flappyLoc(j, :)); 
        end
    end
    if(~isempty(pipeLocs)) 
        for j = 1:size(pipeLocs,1)
            line = int32([pipeLocs(j, 1)-pipeLeftOffset pipeLocs(j, 2)+pipeVertOffset pipeLocs(j,1)+(pipeWidth-pipeLeftOffset) pipeLocs(j,2)+pipeVertOffset]);
            box = int32([pipeLocs(j, 1)-pipeLeftOffset, pipeLocs(j, 2), pipeWidth, 2*pipeVertOffset]);

            frame = step(blackLineIns, frame, line);
            frame = step(whiteBoxIns, frame, box);    
        end
    end

    if(length(jumpsFromHere)>1) 
        njumps = length(jumpsFromHere);
        allpts = zeros(1, 2*njumps);
        allpts(1:2:end) = x(length(x)-njumps:end-1);
        allpts(2:2:end) = y(length(y)-njumps:end-1);
        allpts = int32(allpts);
        frame = step(blackLineIns, frame, allpts);
        x = x - 3;
    end

    jumpsFromHere = jumpsFromHere(2:end);
    frameList(:, :, :, frameNum-startFrame+1) = frame;
end
toc
mov = immovie(frameList);

for f = 1:size(frameList,4)
    step(videoMaker, frameList(:,:,:,f));
    
end
