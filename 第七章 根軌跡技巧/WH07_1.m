clc;clear
C=4


% OS=0.05;Ts=8;
% x=log(OS)^2;
% z=sqrt(x/(x+pi^2))
% w=4/(z*Ts)
% GH=tf(1,[1 1 0]);
% figure(1)
% rlocus(GH)
% z=0.2:0.1:0.9;
% w=0.1:0.1:1;
% sgrid(z,w)
% [K,p]=rlocfind(GH)
% TYR=feedback(K*GH,1)
% figure(2)
% step(TYR)

% 1 (Ts時間)
% OS=0.1;
% x=log(OS)^2;
% z=sqrt(x/(x+pi^2))
% n=1;
% d=poly([0 -3 -4 -(C+8)]);
% figure(1)
% GH=tf(n,d)
% rlocus(GH,0:1000)
% sgrid(z,0)
% [K,p]=rlocfind(GH)
% TYR=feedback(133.2*GH,1)%(133.2~133.4)
% figure(2)
% step(TYR)


% 2
% OS=0.3;
% x=log(OS)^2;
% z=sqrt(x/(x+pi^2))
% G=tf(1,poly([-2 -3]));
% H=tf([1 -4 C],[1 2 5]);
% GH=series(G,H);
% figure(1)
% rlocus(GH)
% sgrid(z,0)
% [K,p]=rlocfind(GH)
% TYR=feedback(2.385*G,H)
% figure(2)
% step(TYR)

% 3(x軸上 臨界阻尼k)(斜線上極點阻尼k)(Y軸上穩定K)
% z=0.707;
% G=tf(1,poly([0 -3 -7 -8]));
% H=tf([1 C],[1 20 200]);
% GH=series(G,H);
% figure(1)
% rlocus(GH,0:6e4)
% sgrid(z,0)
% [K,p]=rlocfind(GH)
% TYR=feedback(2.385*G,H)
% figure(2)
% step(TYR)


% 4
G1=tf(1,[1 7 1220]);
G2=tf(C,[1 0]);
H1=tf([0.00076 0],[1 0.06]);
H2=tf([1 0 0],1);
H3=tf([0.02 0],1);
G=series(G1,G2);
H4=series(H1,H2);
H=minreal(H4+H3+1)
z=0.707;
GH=series(G,H);
figure(1)
rlocus(GH)
sgrid(z,0)
[K,p]=rlocfind(GH)
TYR=feedback(K*G,H)
figure(2)
step(TYR)

% 5


% 6


% 7