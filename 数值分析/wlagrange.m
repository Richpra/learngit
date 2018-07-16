function l = wlagrange(n,t,z)
format long
L = 0;
j = 1;
y = log(tan(t));
syms x;
while j~= n+1
    q = 1;
    i = 1;
    while i ~= n+1
        if j ~= i
           q = q.*(x-t(i))/(t(j)-t(i));
        end
        i = i + 1;
    end
    L = L + q*y(j);
    j = j + 1;
end
L
a = sym2poly(L);
b = polyval(a,z);
b
end

      
        
            