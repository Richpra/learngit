function y = waitken(fname,e,x0)
k = 0;
x= feval(fname,x0);
while  abs(x-x0) > e
    x0 = x;
    x1 = feval(fname,x0);
    x2 = feval(fname,x1);
    x = x2 - (x2-x1)^2/(x0 - 2*x1 + x2);
    k = k+1;
end
y = [x,k];
end