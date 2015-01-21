function [locs] = findPipeCorners(gameImage, pipeImage, scaledown)

if nargin==2
    scaledown=1;
end

%ONLY check the right edge of the screen for pipes
s = size(gameImage);
height = s(1);
width = s(2);
rightOffset = 100;
gameImage = imcrop(gameImage, [width-rightOffset 0 rightOffset height]);

%Scale the image down if desired for performance increase
gameImage = imresize(gameImage, scaledown);
pipeImage = imresize(pipeImage, scaledown);

%Normalized cross correlation template matching
I_SSD = template_matching(pipeImage, gameImage);
[xncc,yncc]=find(I_SSD>=(0.95*max(I_SSD(:)))); %Find all locations with SSD > 0.95(SSDmax)
if(std(yncc) > 10)
    locs = [];
    return
end
%DBSCAN clustering to find corner points
numPts = length(yncc)/1.5;  %Only look for one pipecorner
L = dbscan(yncc, 5, numPts);
xcoords = clusterMean(xncc', L).*(1/scaledown);
ycoords = clusterMean(yncc', L).*(1/scaledown);

ycoords = ycoords + (width - rightOffset);


locs = uint32([ycoords', xcoords']);
end
