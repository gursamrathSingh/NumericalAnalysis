%modified Euler's method - 
% y*(n+1) = y(n) + h * f(x(n), y(n)); h=(x0-a)/slice <- simple Euler
% now y(n+1) = y(n) + (h/2) * [f(x(n), y(n)) + f(x(n+1), y*(n+1))]

clc, clearvars
f = @(x, y) x^2 + y;
a = 0; b = 1;
x0 = 0.04;
h = 0.02;

N = x0/h;
y1=zeros(1,N);
x1=zeros(1,N);

temp = b + h*f(a,b);
y1(1) = b + (h/2)*(f(a,b)+f(a+h, temp));

for i=1:N
    a = a + h;
    x1(i) = a;
    temp = y1(i) + h * f(a, y1(i));
    y1(i+1) = y1(i) + (h/2)*(f(a,y1(i))+f(a+h, temp));
end
disp(x1);
disp(y1);
