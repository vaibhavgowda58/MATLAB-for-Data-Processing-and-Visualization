clc
clear all
f = @(x) 1./(1+x.^2);
a = input('Enter lower limit, a:');
b = input('Enter upper limit, b:');
n = input('Enter no. of subintervals,n:');
h = (b-a)/n;
i = 1:1:n-1;
S = f(a+i.*h);
out = (h./2).*(f(a)+2.*sum(S)+f(b));
disp('trapezoidal rule')
fprintf('The value of integration is %f\n',out);

Se = sum(S(2:2:n-1));
So = sum(S(1:2:n-1));
simout = (h/3).*(f(a)+f(b)+4*So+2*Se);
disp('Simpson"s 1/3rd Rule')
fprintf('The value of integration is %f\n',simout);

k = 3:3:n-1;
S3 = sum(S(3:3:n-1));
Sre = sum(S)-S3;
sout = (3*h/8).*(f(a)+f(b)+2*S3+3*Sre);
disp('Simpson''s 3/8rd Rule')
fprintf('The value of integration is %f\n',sout);