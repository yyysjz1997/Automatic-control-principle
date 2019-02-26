clear all
clc

% %第三章ppt的P158
% %两个系统串联然后单位负反馈的模型
% K1 = 20;
% Numc1 = [11,K1];
% Denc = [0,1];
% 
% Numg = [1];
% Deng = [1,1,0];
% 
% %有用输入的传递函数
% [N1, D1]=series(Numc1, Denc, Numg, Deng);
% [Numr1, Denr1]=cloop(N1, D1);%单位反馈

Numr1 = [500];
Denr1 = [0.1,1,2.5,25,0];
% Numg = [5];
% Deng = [1,0,25];
% [Numr1, Denr1]=series(Numr1, Denr1, Numg, Deng);
printsys(Numr1, Denr1)

% %扰动输入的传递函数
% [Numn1, Denn1]=feedback(Numg, Deng, Numc1, Denc);
% printsys(Numn1, Denn1)

% %单位脉冲响应
% t=[0:0.01:4];
% [c1,x,t1]=impulse(Numr1, Denr1,t);
% plot(t1,c1); 
% grid
% xlabel('times');
% ylabel('outputs');
% roots(Denr1)

%单位阶跃响应
t=[0:0.01:40];
[c1,x,t1]=step(Numr1, Denr1,t);
plot(t1,c1); grid
xlabel('times'); ylabel('outputs');

%超调量
chaotiao1=(max(c1)-1)/1

%求峰值时间
[maxc1, index1]=max(c1);
tp1=t1(index1)

%求调整时间
j=length(t1); dta=0.02;
while c1(j)<1+dta & c1(j)>1-dta;
j=j-1;
end
ts1=t1(j)

%求上升时间
j=1;
while c1(j)<1;j=j+1; end
td1=t1(j)