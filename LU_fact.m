%LU Decomposition with Solution
mat = [-1 4 1; 5/3 2/3 2/3; 2 1 4];
b = [8; 1; 11];
n = 3;
L = eye(n);  

% Augmented Form
a = [mat, b];

% Upper Triangular Form
for i = 1:n-1
    for j = i+1:n
        factor = a(j, i) / a(i, i);
        L(j, i) = factor;
        a(j, :) = a(j, :) - factor * a(i, :);
    end
end
U = a;

% Forward
y = zeros(n, 1);
y(1) = b(1) / L(1, 1);
for i = 2:n
    sum = b(i);
    for j = 1:i-1
        sum = sum - L(i, j) * y(j);
    end
    y(i) = sum / L(i, i);
end
disp(y);

% Backward 
x = zeros(n, 1);
x(n) = y(n) / U(n, n);
for i = n-1:-1:1
    sum = y(i);
    for j = i+1:n
        sum = sum - U(i, j) * x(j);
    end
    x(i) = sum / U(i, i);
end

% Display L, U, and the solution x
disp('L = ');
disp(L);
disp('U = ');
disp(U);
disp('Solution (x) = ');
disp(x);
