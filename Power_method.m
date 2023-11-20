clc, clearvars
A = [
1, 1, 0, 0;
1, 2, 0, 1;
0, 0, 3, 3;
0, 1, 2, 3
];
x0 = [1;1;0;1];
y1 = [0;0;0;0];
x=y1;

while norm(x0-x, "inf") >= 0.0001
    y1 = A * x0;
    x = x0;
    x0 = y1 / norm(y1, "inf");
end
fprintf('Max Eigen Val- %f\n', norm(y1, "inf"));
disp('eigen vector-');
disp(x0');
