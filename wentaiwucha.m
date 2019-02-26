clear
clc

K1 = 10.001;
%K1 = 0.5;
Numc1 = [K1];
Denc = [0,1];
Numg = [10];
Deng = [0.01,0.17,0.8,1];
%��������Ĵ��ݺ���
[N1, D1]=series(Numc1, Denc, Numg, Deng); %seriesΪ����
[Numr1, Denr1]=cloop(N1, D1);%��λ����
printsys(Numr1, Denr1);
%�Ŷ�����Ĵ��ݺ���
[Numn1, Denn1]=feedback(Numg, Deng, Numc1, Denc);
printsys(Numn1, Denn1);

t=[0:0.01:0.8];
%����
[c1,x,t1]=step(Numr1, Denr1,t);
hold on
plot(t1,c1); 
c1(length(t1))

%�Ŷ�
[cn1,x,tn1]=step(Numn1, Denn1,t);
plot(tn1,cn1);
cn1(length(tn1))

grid
xlabel('times');
ylabel('outputs');

