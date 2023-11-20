%Newton Raphson method to find roots of a qiven eqn
%{
clc, clearvars
f = @(x) cos(x);

syms x;
g = diff(f,x);
p0=1 ;
p1=p0 - f(p0)/subs(g,p0);
while abs(p0-p1)>0.001
    p0=p1;
    p1=p0 - f(p0)/subs(g,p0);
end
fprintf('%f',p1);
%}
clc, clearvars
f = @(x) cos(x) - x^2;
syms x
h = diff(f,x);
p0 = 0.8;
p1 = p0 - f(p0)/subs(h,p0);
itr = 0;
while abs(p0-p1) > 0.001
    p0 = p1;
    p1 = p0 - f(p0)/subs(h,p0);
    itr = itr + 1; 
end
fprintf("%f\n%d",p1, itr);