clc;clear
C=4
% 一階系統
% os=0.05;ts=8;
% x=log(os)^2;
% z=sqrt(x/(x+pi^2))
% w=4/(z*ts)
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
% 二階系統
% GH=tf(1,poly([0 -1 -2 -3]));
% figure(1) 
% rlocus(GH); 
% rlocus(GH,0:1e-3:2)%繪出K=0~2?確?1e-3的根軌跡圖
% x=log(0.05)^2;
% zeta=sqrt(x/(x+pi^2))
% w=4/(zeta*8) 
% z=0.2:0.1:0.9;
% wn=0.1:0.1:1;
% sgrid(z,wn)
% [K,p]=rlocfind(GH) 
% TYR=feedback(K*GH,1) 
% figure(2) 
% step(TYR)

% 1
% os=0.1;
% x=log(os)^2;
% z=sqrt(x/(x+pi^2))
% n1=1;
% d1=poly([0 -3 -4 -(C+8)])
% GH1=tf(n1,d1)%==> Y(S)/R(S) 
% figure(1)
% rlocus(GH1,0:200)
% sgrid(z,0)
% %[K1,p1]=rlocfind(GH1)
% TYR1=feedback(133.2*GH1,1)%133.2~133.4
% figure(2)
% step(TYR1)

% 2
% os=0.3;
% x=log(os)^2;
% z=sqrt(x/(x+pi^2));
% G2=tf(1,poly([-2 -3]));
% H2=tf([1 -4 C],[1 2 5]);
% GH2=series(G2,H2);
% figure(1);
% rlocus(GH2);GH2αK
% sgrid(z,0);
% [K2,p2]=rlocfind(GH2)
% TYR2=feedback(K2*G2,H2)%2.381~2.387
% figure(2);
% step(TYR2);

% 3
% z=0.707;
% G3=tf(1,poly([0 -3 -7 -8]));
% H3=tf([1 C],[1 20 200]);
% GH3=series(G3,H3);
% rlocus(GH3,0:6e4);
% sgrid(z,0);
% [K3,p3]=rlocfind(GH3)
% TYR3=feedback(K3*G3,H3)%2.835
% figure(2);
% step(TYR3);

% % 4
% G1=tf(1,[1 7 1220]);
% G2=tf(C,[1 0]);
% H1=tf([0.00076 0],[1 0.06]);
% H2=tf([1 0 0],1);
% H3=tf([0.02 0],1);
% G=series(G1,G2);
% H4=series(H1,H2);
% H=minreal(H4+H3+1)
% z=0.707;
% GH=series(G,H);
% figure(1)
% rlocus(GH)
% sgrid(z,0)
% [K,p]=rlocfind(GH)
% TYR=feedback(K*G,H)
% figure(2)
% step(TYR)

% 5

OS=0.05;Ts=2;
x=(log(OS))^2;
z=sqrt(x/(x+pi^2))
w=4/(z*Ts)
Z1=3.447;
GPI=tf([1 Z1],1);%PD
Gc=GPI
G=tf(C,poly([0 -2]));

GH=series(Gc,G);
figure(1)
rlocus(GH)
sgrid(z,w);
[K,p]=rlocfind(GH)
T=feedback(K*Gc*G,1)
figure(2)
step(T)
D=K,P=Z1*D