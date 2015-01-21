function [xloc, yloc] = evalFlappyPath(flappyX0, flappyV0, flappyClickFrames)
    flappyPostFlapV = -8.4;
    flappyAccel = 0.5761;    
    yloc = zeros(1, length(flappyClickFrames));
    xloc = zeros(1, length(flappyClickFrames));
    yloc(1) = flappyX0(2);
    xloc(1) = flappyX0(1);
    for i = 1:length(flappyClickFrames)
        yloc(i+1) = yloc(i) + flappyV0;
        flappyV0 = flappyV0 + flappyAccel;
        
        
        if(flappyClickFrames(i))
            flappyV0 = flappyPostFlapV;
        end
        xloc(i+1) = xloc(i) + 3;
        
    end
end