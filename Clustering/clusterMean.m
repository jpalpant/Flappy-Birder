function C = clusterMean(X, L)
%CLUSTERMEAN Finds a row vector C of the means of the clusters of X given
%in L
%   L as determined by kmeans; where if X = [1.1 1.2 1.2 1.1 5.1 5.0 5.1
%   5.0] -> L = [1 1 1 1 2 2 2 2]
C = zeros(1, max(L));
for i=1:max(L)
    C(i) = mean(X(L==i));
end

