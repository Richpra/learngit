function product = wmzproduct(x)
n = length(x);
product = 1;
for j = 1:1:n
    product = product*x(j);
end
