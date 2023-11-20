%Trapezoidal Rule to find a definite integral val i.e. a Quadrature
%composite trapezoidal-
clc, clearvars
f = @(x) 1/(x*log(x));
a = 2.71828;
b = 3.71828;
N = 5;
h = (b-a) / N;
sum = 0;
for i=1:N-1
    x = a + i*h;
    sum = sum + f(x);
end
sum = f(a) + 2*sum + f(b);
answer = (h/2)*sum;
disp(answer);


%{
%Q4
clc, clearvars
%length_fn = @(x) sqrt(1 + (f'(x))^2);
f_ = @(x)(2*x)/((x^2 + 1)^2 + 1); 
a=0; b=2;
N=5;
h=(b-a)/N;

sum =0;
for i=1:N-1
    x = a+i*h;
    sum = sum + sqrt(1 + f_(x)^2);
end
sum = sqrt(1 + f_(a)^2) + 2*sum + sqrt(1 + f_(b)^2);
ans1 = h*sum/2;
%}

