syms t;
disp('ԭ����f');
f = sin(2*t)+cos(2*t)
disp('f������LfΪ');
Lf = laplace(f);
pretty(Lf);
subplot(1,2,1);
ezplot(f);
subplot(1,2,2);
ezplot(Lf);
%Ĭ����-2*pi-2*pi��ͼ