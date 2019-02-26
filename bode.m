n1=[100];
d1=[1,0];
sys1=tf(n1,d1);
n2=[1];
d2=[0.2,1];
sys2=tf(n2,d2);
Gt=sys1*sys2;
bode(Gt);
grid

% num = [2];
% den = [1,2,2,1];
% G=tf(num,den);
% sisotool

%  y = roots([0.000025 0 0.0125 0 1 0 -400])

