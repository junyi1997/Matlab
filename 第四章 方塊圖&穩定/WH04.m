C=4;

% 1
G1_1=tf(4);
G2_1=tf(1,[1 1]);
G3_1=tf([1 0],[1 0 2]);
G4_1=tf(1,[1 0 0]);
H1_1=tf([1 2],[1 2 1]);
H2_1=tf(C);
H3_1=tf([1 0 2],[1 0 0 14]);
% (a)
Ans1_a=minreal(series(G1_1,feedback(series(feedback(series(G2_1,G3_1),H1_1),feedback(G4_1,H2_1)),H3_1)))
% (b)
Ans1_b=minreal(G1_1)
% (c)
Ans1_c=minreal(series(G1_1,feedback(series(G2_1,G3_1),H1_1)))

% 3
G1_3=tf(1,[1 2 3]);
G2_3=tf(C,[1 4]);
G3_3=tf([1 8],[1 5 0]);
H1_3=tf(3,[1 7]);
H2_3=tf(1,[1 6]);
% (a)
Ans3_a=minreal(series(feedback(G1_3,series(H1_3,G2_3)),feedback(series(G2_3,G3_3),H2_3)))
% (b)
Ans3_b=1
% (c)
Ans3_c=minreal(G1_3)

% 7
% (a)
Ans7_a=tf(conv(C,poly([-2 -3])),poly([-1 -4 -5 -6]))
% (b)
[A7_b B7_b C7_b D7_b]=tf2ss(conv(C,poly([-2 -3])),poly([-1 -4 -5 -6]))
% (c)
S7=ss(A7_b, B7_b ,C7_b, D7_b);
Ans7_c=canon(S7,'modal')
% 8
Pinv=[2 1 -4;1 -2 0;4 6 2];
P=inv(Pinv);
A8=[2 0 -1;0 4 6;-6 -5 C];
B8=[2;0;1];
C8=[2 5 3];
Az8=Pinv*A8*P
Bz8=Pinv*B8
Cz8=C8*P
% 9
A9=[-5 -5 4;2 0 -2;0 2 -1];
B9=[-1; 2 ;-2];
C9=[-1 1 C];

% series(,)串接
% parallel(,)並聯
% feedback(G,H)回授
% minreal()最高階為1
