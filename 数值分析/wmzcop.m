function comp = wmzcop(x)
n = length(x);
max = 0;
for j = 1:1:n
    if abs(x(j)) > max
        max = abs(x(j));
    end
end
max
