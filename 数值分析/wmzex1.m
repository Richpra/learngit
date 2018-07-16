function  y = wmzex1(x)
if (x<=0)
    y = cos(x)
elseif ((x > 0) & (x < 1)) 
    y = (x+1)^(1/3)
elseif (x>=1)
    y = exp(x)
end
    