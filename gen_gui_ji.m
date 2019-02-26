% Num = [1,1];
% Den1 = [1,4,16];
% Den2 = [1,0];
% Den3 = [1,-1];
% Den4 = conv(Den1,Den2);
% Den = conv(Den4,Den3);
% figure(1)
% rlocus(Num,Den)
% sgrid
% [k,p] = rlocfind(Num,Den)

Num = [1];
Den = [1,3,2,0];
figure(1)
rlocus(Num,Den)
sgrid
[k,p] = rlocfind(Num,Den)
