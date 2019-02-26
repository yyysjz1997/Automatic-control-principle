clear
clc
t = 0:0.0001:10;
y1 = 1-1.02*exp(-t).*sin(4.9*t+pi/4);
plot(t,y1)
hold
grid on
y2 = 1+1.02*exp(-t);
plot(t,y2)
y3 = 1-1.02*exp(-t);
plot(t,y3)
xlabel('t')
ylabel('y')