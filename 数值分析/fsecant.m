function y = fsecant(fname,e,x0,x1)
format long
k = 0;
x = x0;
while  abs(x - x1) > e
    x0 = x1;
    x1 = x;
    x = x1 - feval(fname,x1)*(x1 - x0)/(feval(fname,x1)-feval(fname,x0));
    k = k + 1;
end
y = [x,k];
end
    

