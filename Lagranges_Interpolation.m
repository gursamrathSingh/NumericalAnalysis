%lagranges's interpolation
clc, clearvars
x = [0,0.25,0.5,0.75];
f = [1,1.64872,2.71828,4.48169];
k = 0.43;
n = 4;
l = zeros(1,n);

for i=1:n
    p1=1; p2=1;
    for j=1:n
        if j ~= i
            p1 = p1 * (k - x(j));
        end
    end
    for m=1:n
        if m ~= i
            p2 = p2 * (x(i) - x(m));
        end
    end
    l(i) = p1 / p2;
end

answer = 0;
for i=1:n
    answer = answer + l(i)*f(i);
end
fprintf('The value at %f is %0.4f', k, answer);
