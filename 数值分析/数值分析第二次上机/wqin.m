function y = wqin(x)
a = [1,-18,144,-672,2016,-4032,5376,-4608,2304,-512];
b(1) = a(1);
n = length(a);
for i = 2:1:n
    b(i) = x*b(i-1) + a(i);
end
y=b(n);
end