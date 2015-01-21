function [ loc] = findFlappy(gameImage, flappyImage, scaledown)
   if nargin==2 
       scaledown=1; 
   end
   s = size(gameImage);
   height = s(1);
   leftOffset = 170;
   width = 80;

    gameImage = imcrop(gameImage, [leftOffset 0 width height]);

    
    gameImage = imresize(gameImage, scaledown);
    flappyImage = imresize(flappyImage, scaledown);

    I_SSD = template_matching(flappyImage, gameImage);
    [xncc,yncc]=find(I_SSD>=0.95*max(I_SSD(:)));

    if(std(xncc) > 10)
        loc = [];
        return
    end
    
    %DBSCAN clustering to find center of flappy points
    numPts = length(xncc)/1.5; %no more than one clusters for our specific application
    L = dbscan(xncc, 20, numPts);
    xcoords = clusterMean(xncc', L)*(1/scaledown);
    ycoords = clusterMean(yncc', L)*(1/scaledown) + leftOffset;
    
    loc = uint32([ycoords, xcoords]); 
end

