clear all
clc

% %������ppt��P158
% %����ϵͳ����Ȼ��λ��������ģ��
% K1 = 20;
% Numc1 = [11,K1];
% Denc = [0,1];
% 
% Numg = [1];
% Deng = [1,1,0];
% 
% %��������Ĵ��ݺ���
% [N1, D1]=series(Numc1, Denc, Numg, Deng);
% [Numr1, Denr1]=cloop(N1, D1);%��λ����

Numr1 = [500];
Denr1 = [0.1,1,2.5,25,0];
% Numg = [5];
% Deng = [1,0,25];
% [Numr1, Denr1]=series(Numr1, Denr1, Numg, Deng);
printsys(Numr1, Denr1)

% %�Ŷ�����Ĵ��ݺ���
% [Numn1, Denn1]=feedback(Numg, Deng, Numc1, Denc);
% printsys(Numn1, Denn1)

% %��λ������Ӧ
% t=[0:0.01:4];
% [c1,x,t1]=impulse(Numr1, Denr1,t);
% plot(t1,c1); 
% grid
% xlabel('times');
% ylabel('outputs');
% roots(Denr1)

%��λ��Ծ��Ӧ
t=[0:0.01:40];
[c1,x,t1]=step(Numr1, Denr1,t);
plot(t1,c1); grid
xlabel('times'); ylabel('outputs');

%������
chaotiao1=(max(c1)-1)/1

%���ֵʱ��
[maxc1, index1]=max(c1);
tp1=t1(index1)

%�����ʱ��
j=length(t1); dta=0.02;
while c1(j)<1+dta & c1(j)>1-dta;
j=j-1;
end
ts1=t1(j)

%������ʱ��
j=1;
while c1(j)<1;j=j+1; end
td1=t1(j)