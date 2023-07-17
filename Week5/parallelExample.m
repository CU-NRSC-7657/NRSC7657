%% Using non-parallel processing

tic
n = 200;
A = 500;
a = zeros(1,n);
for i = 1:n
    a(i) = max(abs(eig(rand(A))));
end
parOFF = toc

%% Using parallel processing


tic
n = 200;
A = 500;
a = zeros(1,n);
parfor i = 1:n
    a(i) = max(abs(eig(rand(A))));
end
parON = toc

%% processing savings

speedUP = parOFF / parON;
disp(['Parfor was ' num2str(speedUP) ' times faster'])