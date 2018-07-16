function m = wval4(A,x,y)
n = length(x);
for i =1:1:n
    for j =1:1:n
     s(i,j) = x(i)*y(j);
    end
end
sum = s + A;
sum