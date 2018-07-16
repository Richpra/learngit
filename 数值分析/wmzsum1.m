function abssum = wmzsum1(x)
n = length(x);
abssum = 0;
for j = 1:1:n
    abssum  = abssum + abs(x(j));
end
abssum
    