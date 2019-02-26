% t = [0:0.1:10];
% n1 = [4];
% d1 = [1 5 4];
% sys1  = tf(n1,d1);
% C = step(sys1,t);
% [x,y,z] = step(sys1,t);
% plot(t,x);
% hold on
% plot(t,C);
% hold on
% 
% item1 = -4/3*exp(-t);
% item2 = 1/3*exp(-4*t);
% plot(t,item1,'r');
% plot(t,item2,'y');

clear,clc
m = 0;
for i = 1:200
    w = 0.5*i;
    for j = 1:80
        k = 0.01*j*w;
        num = [k*w*w];
        den = [1 0.4*w w*w k*w*w];
        t = [0:0.01:100];
        [c,x,t] = step(num,den,t);
        ma = max(c);
        tp = find(c == ma);
        if(tp < 100)
            if(1 < ma < 1.05)
                m = m+1;
                ck(m) = k;
                cw(m) = w;
            end
        end
    end
end
plot(cw,ck,'.');
axis([0 100 0 40]);

