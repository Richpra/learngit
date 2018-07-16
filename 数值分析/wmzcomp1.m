function comp1 = wmzcomp1(x)
n = length(x);
min = abs(x(1));
for j = 1:1:n
    if abs(x(j)) < min
        min = abs(x(j));
    end
end
min
