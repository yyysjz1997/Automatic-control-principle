clc;
clear;
syms x y

% y = @(x)(-pi./2).*(1/((asin(1./x))+((1./x).*(sqrt(1-(1./x).*(1./x))))));
% ezplot(y);

x = 0:1:10;
y = (-pi/2).*(1./((asin(1./x))+((1./x).*(sqrt(1-(1./x).*(1./x))))));
   
plot(x,y)

