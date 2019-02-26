syms t;
disp('原函数f');
f = sin(2*t)+cos(2*t)
disp('f的象函数Lf为');
Lf = laplace(f);
pretty(Lf);
subplot(1,2,1);
ezplot(f);
subplot(1,2,2);
ezplot(Lf);
%默认在-2*pi-2*pi画图