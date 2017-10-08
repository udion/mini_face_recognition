function [coeffvec] = profiler(X, eigSpace)
%PROFILER Summary of this function goes here
%   Detailed explanation goes here
    esz = size(eigSpace);
    dbsz = size(X);
    coeffvec = zeros(dbsz(2), esz(2));
    for i=1:dbsz(2)
        for j=1:esz(2)
            coeffvec(i,j) = sum(X(:,i) .* eigSpace(:,j));
        end
    end
end

