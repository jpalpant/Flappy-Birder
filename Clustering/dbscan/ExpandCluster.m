function [ExpandClusterReturn labs]= ExpandCluster(a,labs,i,ClusterId, Eps, MinPts)
UNCLASSIFIED = 0;
NOISE = -1;
BORDER = -2;
% calculate distances
d=distance(+a(i,:),+a(:,:),1);

% seeds = Retrieve_Neighbors(xi, Eps)
seeds = find(d < Eps);

% If |seeds | < MinPts
if size(seeds,2) < MinPts,
    labs(i) = NOISE;                 % Assign xi as noise
    ExpandClusterReturn = 0;         % Return without expansion success
else
    % STEP 1: xi is a identified as a starting core-point for ClusterId
    %labs(i) = ClusterId;  %        % Thanh changed in May 2012
    % Exclude xi from the Seeds
    %seeds = setdiff(seeds, i);     % Thanh changed in May 2012
    % STEP 2:  Identify chains
    % For all xj in seeds
    while ~isempty(seeds) % Not an empty seeds
        % current point is the first point in seeds
        
        currentP = seeds(1);
        d=distance(+a(currentP,:),+a(:,:),1);
        % NEps(xj)= Retrieve_Neighbors(xj,Eps)
        result = find(d <= Eps);
        %If | NEps(xj) | >= MinPts                              // xj is a core point
        if length(result) >= MinPts
            % Assign xj  to ClusterId
            labs(currentP) = ClusterId;
            % Add all UNCLASSIFIED in NEps(xj) to seeds
            result_unclassified = result(find(labs(result)==UNCLASSIFIED));
            result_noise = result(find(labs(result)==NOISE));
            % Temperary complete the intermediate chain ... the chain can be extended in the comming steps.
            % The border points have not yet been assigned to any cluster
            labs([result_unclassified result_noise]) = BORDER;   % first assign to a border-point... later will be reassigned to e.g. core-point
            seeds = union(seeds,result_unclassified);
        end
        % Exclude the current point in seeds and go back to the loop
        seeds = seeds(2:size(seeds,2));
    end % end while
    % Return with expansion success
    ExpandClusterReturn = 1;    % return true
end