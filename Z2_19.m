ng1 = [10.8E+08 10.8E+08];
dg1 = [1 8];
sysg1 = tf(ng1,dg1);

ng2 = [1];
dg2 = [10.8E+08 0 0];
sysg2 = tf(ng2,dg2);

sys1 = series(sysg1,sysg2);
sys = feedback(sys1,[1],-1)

t=[0:0.1:300];
[y,t] = step(10*sys,t);
plot(t,y)
grid
