
n1=[30];
d1=[0.1,1,0];
sys1=tf(n1,d1);
n2=[1];
d2=[0.2,1];
sys2=tf(n2,d2);

Gt=sys1*sys2;
nyquist(Gt);

%y = roots([-5.29 0 5.29 0 -1])