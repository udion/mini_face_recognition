%this will demonstrate the usage of all the functions
root = './att_faces';
k = 30;
[X,meanvec] = loader(root, 32, 6);
eigSpace = get_eigSpace(X,k);
[coeffs] = profiler(X, eigSpace);

%testing
probe = double(imread('./att_faces/s2/9.pgm'));
probe = probe(:);
t = probe-meanvec;
r = profiler(t,eigSpace);
s = size(coeffs);
rsmd = zeros(s(1),1);
for i=1:s(1)
    rsmd(i,1) = sum((coeffs(i,:) - r).^2);
end
plot(rsmd)