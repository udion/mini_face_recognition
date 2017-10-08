function [X, meanvec] = loader(dir_loc, n, m)
%LOADER: this will take the directory path containing nultiple directories
%each containing various images, n will tell the number of sub directories
%to be looked into for training, m will tell the number of images in each
%of the subdirectories to be loaded for training, the directory structure
%is assumend to be known
    X=[];
    for i=1:n
        sub_dir = strcat('/s',num2str(i));
        full_dir = strcat(dir_loc, sub_dir);
        X = [X, loader_helper(full_dir, m)];
    end
    meanvec = mean(X, 2);
    s = size(X);
    mm = zeros(s);
    for i=1:s(2)
        mm(:,i) = meanvec;
    end
    X = X-mm;
end