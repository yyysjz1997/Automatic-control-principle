% syms s
% LF = (500/(s*(s^2+25)*(0.1*s+1)))
% f = ilaplace(LF)
% ezplot(f)
clear all
clc

syms s;
disp('f的象函数Lf为');
Lf = (s/(s^2+4)+(2/(s^2+4)))
disp('原函数f');
f = ilaplace(Lf)
pretty(f);

subplot(1,2,1);
ezplot(Lf);
subplot(1,2,2);
ezplot(f);
%默认在-2*pi-2*pi画图