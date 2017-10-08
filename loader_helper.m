function [vecmat] = loader_helper(dir_loc, n)
%LOADER: will take the input directory for a database of image
%and the number of images to be loaded for testing purpose
%and will return the matrix of vectorized n images
    dirs = dir(dir_loc);
    test_dirs = dirs(3:3+n-1);
    img = imread(strcat(dir_loc, '/', test_dirs(1).name));
    s = size(img(:));
    vecmat = zeros(s(1), n);
    for i=1:n
        img = imread(strcat(dir_loc, '/', test_dirs(i).name));
        vecmat(:,i) = img(:);
    end
end