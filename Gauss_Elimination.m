clc, clearvars
A = [4,1,-1,1; 1,4,-1,-1; -1,-1,5 ,1; 1,-1,1,3];
b = [-2,-1,0,1];
a = [A, b'];
n = 4;

%upper triangular matrix
for i=1:n
    for j=i+1:n
        a(j, :) = a(j, :) - a(i, :)*a(j,i)/a(i,i);
    end
end
disp(a);

%backward substitution-
x = zeros(1,n);
x(n) = a(n, n+1) / a(n,n);
for i=n-1:-1:1
    sum = a(i, n+1);
    for j=i+1:n
        sum = sum - x(j)*a(i,j);
    end
    x(i) = sum/a(i,i);
end
disp(x);

