function [jumps] = findFlappyPath(flappyX0, flappyV0, pipeLocs)
    
    flappyAccel = 0.5761;  
    flappyPostFlapV = -8.4;
    stayEvenJumpInterval = floor(2*flappyPostFlapV/-flappyAccel);
    maxJumpGain = 0.5*flappyAccel*(stayEvenJumpInterval/2)^2 + flappyPostFlapV*stayEvenJumpInterval/2;
    
    if(isempty(pipeLocs))
        jumps = zeros(1,stayEvenJumpInterval);
        jumps(1) = 1;
        return
    end
    
    pipeWidth = 110;
    pipeVertOffset = 95;

    flappyV0 = double(flappyV0);
    framesTilClear = floor((pipeLocs(1) + pipeWidth - flappyX0(1))/3);
    jumps = zeros(1, framesTilClear);

    dyToMidPipe = double(pipeLocs(2)) - double(flappyX0(2)) + pipeVertOffset;
    if(dyToMidPipe > 0)
        fprintf('Flappy is above the pipe middle\nOffset is %d\n', dyToMidPipe)
        framesToFall = ceil((-flappyV0 + sqrt(flappyV0^2 + 2 * flappyAccel * dyToMidPipe))/flappyAccel);
        jumps(framesToFall:stayEvenJumpInterval:end) = 1;
    else
        fprintf('Flappy is below the pipe middle\nOffset is %d\n', dyToMidPipe)
        numJumps = ceil(dyToMidPipe/maxJumpGain);
        jumps(1:11:(11*numJumps)) = 1;
        jumps(11*numJumps:stayEvenJumpInterval:end) = 1;
    end
end


