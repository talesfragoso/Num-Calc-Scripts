tic();
for n = 1:10000000;
  x(n) = n * sin(n);
end
toc();

tic();
n = 1:10000000;
x = n .* sin(n);
toc();
