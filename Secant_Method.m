%Secant method to find the roots of a fn
%{
clc, clearvars
f = @(x) x*exp(x) - cos(x);

h=0.5;

for i=0:h:5
    if f(i)*f(i+1)<0
        a = i;
        b = i+1;
        x0 =abs((a*f(b)-b*f(a))/(f(a)-f(b)));
        itr = 1;
        while abs(b-a) > 0.0001
            a = b;
            b = x0;
            x0 = abs((a*f(b)-b*f(a))/(f(a)-f(b)));
            itr = itr + 1;
        end
        fprintf("%f\t%d\n",x0,itr);
    end
end
%}
clc, clearvars
f = @(x) x*exp(x)-cos(x);
a=1.101111;b=2;x0 = abs((a*f(b)-b*f(a))/(f(a)-f(b)));
itr=1;
error=b-a;epsillon = 0.0001;
while error>epsillon
    a=b;
    b=x0;
    x0 = abs((a*f(b)-b*f(a))/(f(a)-f(b)));
    itr = itr + 1;
    error=abs(b-a);
end
fprintf("%f\n%d",x0, itr);
