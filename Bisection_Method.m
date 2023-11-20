% Bisection Method to find the roots of a function
clc, clearvars
f = @(x) x^3 - 5*x + 4;

h = 0.5;n=5;a=0;b=0;
fprintf("The roots are-\n")
for i=-n:h:n
    if f(i)*f(i+h)<=0
        a = i;
        b = i+h;
        while (b-a > 0.001)
            c = (a+b)/2;
            if f(c) * f(b) < 0
                a=c;
            else
                b=c;
            end
        end
        fprintf('%f\n',c)
    end
end
