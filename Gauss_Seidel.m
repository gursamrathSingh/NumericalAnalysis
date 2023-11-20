clc , clearvars;
A = [1,2,4;3,8,14;2,6,13];
b = [3;13;4];n=3;
x0 = zeros(1,n); x=x0;
tol = 0.0001;
k=1;
while k <= 100
    for i=1:n
        sum1 = 0; sum2=0;
        for j=1:i-1
            sum1 = sum1 + A(i,j)*x(j);
        end
        for d=i+1:n
            sum2 = sum2 + A(i,d)*x0(d);
        end
       
        x(i) = (1/A(i,i))*(-sum1-sum2+b(i));
    end
        if norm(x-x0,"inf") < tol
            disp(x);
            break;
        end
        k = k + 1;
        for o=1:n
            x0(o) = x(o);
        end
 end