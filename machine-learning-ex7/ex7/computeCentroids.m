function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% You need to return the following variables correctly.
centroids = zeros(K, size(X,2));

idx_matrix = zeros(size(X,1),K);
%if idx(2) = 2, idx_matrix will have [0 0 0; 0 1 0]
for i = 1:size(idx,1)
    idx_matrix(i,idx(i)) = 1;
end
%calculate mean = sum / count. count = sum of 1
centroids = idx_matrix' * X ./ sum(idx_matrix,1)';

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%








% =============================================================


end

