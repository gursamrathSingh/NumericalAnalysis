%Composite Simpson- odd*4 & even*2
clc, clearvars
f = @(x) 1/(x*log(x));
a = 2.718282; b = 3.71828;
N = 2; %N must be even!

h = (b-a)/N;
even = 0; odd = 0;
for i=1:N-1
    x = a + i*h;
    if rem(i,2) == 0
        even = even + f(x);
    else
        odd = odd + f(x);
    end
end

sum = f(a) + 4*odd + 2*even + f(b);
ans1 = sum*h/3;
disp(ans1);
