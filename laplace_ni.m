% syms s
% LF = (500/(s*(s^2+25)*(0.1*s+1)))
% f = ilaplace(LF)
% ezplot(f)
clear all
clc

syms s;
disp('f������LfΪ');
Lf = (s/(s^2+4)+(2/(s^2+4)))
disp('ԭ����f');
f = ilaplace(Lf)
pretty(f);

subplot(1,2,1);
ezplot(Lf);
subplot(1,2,2);
ezplot(f);
%Ĭ����-2*pi-2*pi��ͼ