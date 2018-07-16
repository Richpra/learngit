function squaresum = wmzsum2(x)
n = length(x);
squaresum = 0;
for j = 1:1:n
    squaresum  = squaresum + (x(j))^2;
end
