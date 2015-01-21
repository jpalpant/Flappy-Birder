function [labs labscore] = dbscan(a,Eps,MinPts)
%  DBSCAN clustering
% [labs labscore] = dbscan(A,Eps,MinPts)
%
% DBSCAN clustering of data matrix in A. labels is a vector with 
% cluster labels for each vector.
% 
% In case of publication of any application of this method,
% please, cite the original work:
% Thanh N. Tran*, Klaudia Drab, Michal Daszykowski, "Revised DBSCAN algorithm 
% to cluster data with dense adjacent clusters", Chemometrics and Intelligent 
% Laboratory Systems, 120:92–96.
% DOI: 10.1016/j.chemolab.2012.11.006 


UNCLASSIFIED = 0;
BORDER = -2;
    % Square Eps in order not to square all distances of points
    %eps = eps^2;
    
     m = size(a,1);
     labs = zeros(m,1);
     ClusterId = 1;
     for i=1:m
        if labs(i) == UNCLASSIFIED                 
            
           % Expand cluster ClusterId
           % Get a set of points of distance < eps
           [ExpandClusterReturn labs]= ExpandCluster(a,labs,i,ClusterId,Eps, MinPts);
           if ExpandClusterReturn
               ClusterId = ClusterId +1;
           end
        end
     end

     % Step 3:
     labscore = labs; core_index = find(labscore > 0);
     border_points = find(labs==BORDER);
     % For xborder in border_list but has no ClusterId
     for i=1:length(border_points)
            % xborder in border_list
            currentB = border_points(i);
            d=distance(+a(currentB,:),+a(core_index,:),1);
            % the closest core-points 
            [tmp nearest_core]=min(d);
            nearest_core_index=core_index(nearest_core);
            %Assign xborder to ClusterId of the closest core-points 
            labs(currentB)=labs(nearest_core_index);
     end
end
