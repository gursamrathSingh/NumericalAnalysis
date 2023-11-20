%Fixed point iterative method to find the fixed point of the given eqn.
%{
clc, clearvars
g = @(x) x - (x^3 + 4*x^2 - 10)/(3*x^2 + 8);
x0 = 0; x1 = g(x0);
i = 1;
while abs(x0-x1) > 0.001
    x0 = x1;
    x1 = g(x0);
    i = i+1;
end
x1,i
%}
clc, clearvars
g = @(x) x - (x^3 + 4*x^2 - 10)/(3*x^2 + 8);
x0=0; x1=g(x0);
while abs(x0-x1)>0.001
    x0=x1;
    x1=g(x0);
end
fprintf("%f",x1);


