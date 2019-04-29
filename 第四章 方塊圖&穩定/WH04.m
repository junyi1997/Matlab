clc;clear
C=4;
% % 1
% G1_1=tf(4);
% G2_1=tf(1,[1 1]);
% G3_1=tf([1 0],[1 0 2]);
% G4_1=tf(1,[1 0 0]);
% H1_1=tf([1 2],[1 2 1]);
% H2_1=tf(C)
% H3_1=tf([1 0 2],[1 0 0 14]);
% % 1(a)
% % Ans1_a=minreal(series(G1_1,feedback(series(feedback(series(G2_1,G3_1),H1_1),feedback(G4_1,H2_1)),H3_1)))
% Ans1_a=minreal(series(G1_1,feedback(feedback(G2_1*G3_1,H1_1)*feedback(G4_1,-H2_1),H3_1)));
% G5_1= feedback(G2_1*G3_1,H1_1);
% G6_1= feedback(G4_1,-H2_1);
% G7_1= feedback(G5_1*G6_1,H3_1);
% G8_1=series(G1_1,G7_1);
% % 1(b)
% L1_1=-G2_1*G3_1*H1_1;
% L1_2=-G2_1*G3_1*G4_1*H3_1;
% L1_3=G4_1*H2_1;
% D1_1=1-(L1_1+L1_2+L1_3)+(L1_1*L1_3);
% Ans1_b=minreal(G1_1*(1-L1_3)/D1_1);
% % 1(c)
% Ans1_c=minreal(G1_1*G2_1*G3_1*1/D1_1);
% % (d)
% % step(Ans1_c,0:1e-3:2)
% % 3
% G1_3=tf(1,[1 2 3]);
% G2_3=tf(C,[1 4]);
% G3_3=tf([1 8],[1 5 0]);
% H1_3=tf(3,[1 7]);
% 
% H2_3=tf(1,[1 6]);
% % 3(a)
% Ans3_a=minreal(feedback(series(feedback(G1_3,series(H1_3,G2_3)),feedback(series(G2_3,G3_3),H2_3)),1));
% % 3(b)
% L1_3=-G1_3*G2_3*G3_3;
% L2_3=-G1_3*G2_3*H1_3;
% L3_3=G2_3*G3_3*H2_3;
% D3=minreal(1-(L1_3+L2_3+L3_3));
% M1_3_b=1;
% D1_3_b=1-L3_3;
% Ans3_b=minreal(M1_3_b*D1_3_b/D3);
% % 3(c)
% M1_3_c=G1_3;
% D1_3_c=1;
% Ans3_c=M1_3_c*D1_3_c/D3;
% % 3(d)
% M1_3_d=G1_3*G2_3;
% D1_3_d=1;
% Ans3_d=M1_3_d*D1_3_d/D3;
% step(Ans3_d ,0:1e-3:10);
% 
% % 4
% L1_4=-G1_3*G2_3*H1_3;
% L2_4=-G1_3*G2_3*G3_3;
% L3_4=G2_3*G3_3*H2_3;
% D4=1-(L1_4+L2_4+L3_4);
% M1_4=G2_3*G3_3;
% D1_4=1;
% Ans4=minreal(M1_4*D1_4/D4);
% step(Ans4);

% % 5
% K=0.76
% %K=1.015
% G1_5=tf(K,[1 10]);
% G2_5=tf(5*C,[1 1.4 0]);
% T_5=feedback(G1_5*G2_5,1);
% step(T_5)
% num5=[5*C*K]
% den5=[1 11.4 14 5*K*C]
% A5=tf(num5,den5)
% roots(den5)
% step(A5)

% % 6
% % (a)
% G1_6=tf(1,[1 12]);
% G2_6=tf(20,[1 0]);
% H_6=tf([0.2 0],1);
% G3_6=C+10;
% G4_6=feedback(G1_6*G2_6,H_6);
% Ans6_a=feedback(G3_6*G4_6,1)
% % (b)
% [num_6,def_6]=tfdata(Ans6_a,'v')
% wn_6=sqrt(def_6(3))
% z_6=def_6(2)/(2*wn_6)
% step(Ans6_a)

% % 7
% % 7(a)
% num_7a=C*poly([-2 -3])
% def_7a=poly([-1 -4 -5 -6])
% G7=tf(num_7a,def_7a)
% Ans7_a=feedback(G7,1)
% % 7(b)
% [num_7b,def_7b]=tfdata(Ans7_a,'v')
% [A7_b B7_b C7_b D7_b]=tf2ss(num_7b,def_7b)
% % 7(c)
% S7=ss(A7_b, B7_b ,C7_b, D7_b);
% Ans7_c=canon(S7,'modal')

% % 8
% Pinv=[2 1 -4;1 -2 0;4 6 2];
% P=inv(Pinv);
% A8=[2 0 -1;0 4 6;-6 -5 -C];
% B8=[2;0;1];
% C8=[2 5 3];
% D8=0;
% Az8=Pinv*A8*P
% Bz8=Pinv*B8
% Cz8=C8*P

% 9
A9=[-5 -5 4;2 0 -2;0 2 -1];
B9=[-1; 2 ;-2];
C9=[-1 1 C];
D9=0;
[P_9,D_9]=eig(A9);
Ap_9=inv(P_9)*A9*P_9
Bp_9=inv(P_9)*B9
Cp_9=C9*P_9
Dp_9=D9
% 
% % series(,)串接
% % parallel(,)並聯
% % feedback(G,H)回授
% % minreal()最高階為1
