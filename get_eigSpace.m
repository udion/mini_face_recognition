function [eigSpace] = get_eigSpace(X, k)
%GET_EIGSPACE: takes the high dimensional X matrix of database
% and the reduced dimension, gives the reduced dimension eigen space
    L = X'*X;
    s1 = size(L);
    s2 = size(X);
    [evec, ~] = eig(L);
    eigC = X*evec;
    for i=1:s1(1);
        eigC(:,i) = eigC(:,i)/norm(eigC(:,i));
    end
    topKvec = zeros(s2(1),k);
    for i=1:k
        topKvec(:,i) = eigC(:, s1(1)-i+1);
    end
    eigSpace = topKvec;
end