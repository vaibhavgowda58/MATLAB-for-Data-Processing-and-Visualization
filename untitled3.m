clc
clear all
x1 = input('Enter starting value of x: ');
h = input('Intervel: ');
x2 = input('Ending value of x: ');
x = x1:h:x2;
n = length(x);
for i = 1:n
    y(i,1) = input('Enter corresponding values of y: ');
end
for j = 2:n
    for i = 1:n-j+1
    y(i,j) = y(i+1,j-1)-y(i,j-1);
    end
end
fprintf('\n***Foward difference table***');
fprintf('\n\tx\t y\t\t nabla 1\t\t nabla 2\t nabla3 \t nabla4 \t nabla5');
for i = 1:n
    fprintf('n% . f',x(i));
    for j = 1:n-i+1
        fprintf('\t % . f',y(i,j));
    end
end
x_reqd = input('\nEnter X for which value of y is to be calculated:');
u = (x_reqd-x(n))/h;

A = y(n);
G = u;
for k = 1:n-1
    A = A+G*y(n-k,k+1);
    G = (u+k)/(k+1)*G;
end
fprintf('\n\n\n Value of Y at(x = %f) = %.4f',x_reqd,A);