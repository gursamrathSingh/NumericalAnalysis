%Runge-Kutta :
clc, clearvars
f = @(x,y) 2*cos(x) - y;
a = 0; b = 1;
x0 = 1;

h = 0.2;
N = (x0 - a)/h;

y1 = zeros(1, N);
x1 = zeros(1, N);
y1(1) = b;
x1(1) = a;
for i=1:N    
    k1 = h*f(a, y1(i));
    k2 = h*f(a + h/2, y1(i)+k1/2);
    k3 = h*f(a + h/2, y1(i)+k2/2);
    k4 = h*f(a+h, y1(i)+k3);
    k = (k1 + 2*k2 + 2*k3 + k4)/6;
    y1(i+1) = y1(i) + k;
    a = a + h;
    x1(i+1) = a;
end
disp(x1);
disp(y1);
    

    
