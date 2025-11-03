clear all
%x = [0 2 3 4 7 9];
%y = [4 26 58 1 12 466 922];
x = input('Enter the values of x =');
y = input('Enter the values of y =');
X = input('Enter the values of X =');
n = size(x,2);
DD = zeros(n,n);
DD(:,1) = y';
for j = 2:n
    for i = 1:n-j+1
    DD(i,j) = (DD(i+1,j-1)-DD(i,j-1))/(x(i+j-1)-x(i));
    end
end
for i = 1:n-1
    P(i) = prod(X-x(:,1:i))*DD(1,i+1);
end
Y = y(1)+sum(P);
fprintf('\n***Divided differnce table***');
fprintf('\nx\t\ty\t\tDD1\t\tDD2\t\tDD3\t\tDD3\t\tDD4\t\tDD5');
for i = 1:n
    fprintf('\n%.f',x(i));
    for j = 1:n-i+1
        fprintf('\t % .f',DD(i,j));
    end
end
fprintf('\n\nValue of Y at X = %f is %f\n',X,Y)
