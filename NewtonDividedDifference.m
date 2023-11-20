% Newton's Divided Difference method for interpolating polynomial
clc, clearvars
x = [-1, 0, 1, 2];
f = [3, -4, 5, -6];

n = 4;
p = 1.5;

A = zeros(n);
A(:, 1) = f';

for i=2:n
    for j=i:n
        % using f[x0,x1] = f(x1) - f(x0) / x1 - x0
        A(j, i) = (A(j, i-1)-A(j-1,i-1))/(x(j)-x(j-(i-1)));
    end
end

product = zeros(1,n);
for i=1:n
    product(i) = 1;
    for j=1:i-1
        product(i) = product(i) * (p - x(j));
    end
end

sum = 0;
for i=1:n
    sum = sum + A(i, i)*product(i);
end

fprintf('f(%f) = %f\n', p, sum);
disp(A);

