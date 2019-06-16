'EX1'
G1=4;
G2=tf(1,[1 1]);
G3=tf([1 0],[1 0 2]);
G4=tf(1,[1 0 0]);
H1=tf([1 2],[1 2 1]);
H2=9;
H3=tf([1 0 2],[1 0 0 14]);
G5=feedback(G2*G3,H1);
G6=feedback(G4,-H2);
G7=feedback(G5*G6,H3);
T=G1*G7
T=series(G1,G7)
L1=-G2*G3*H1;
L2=-G2*G3*G4*H3;
L3=G4*H2;
D=1-(L1+L2+L3)+L1*L3
D=minreal(D);
M1=G1;
D1=1-L3;
R2E1=minreal(M1*D1/D)
step(R2E1,0:1e-3:2)
'E2'
M1=G1*G2*G3;
D1=1;
R2E2=minreal(M1*D1/D)
step(R2E2,0:1e-3:2)
'EX2'
%G1=tf(1,[1 2 3]);
%G2=tf(9,[1 4]);
%G3=tf([1 8],[1 5 0]);
%H1=tf(3,[1 7]);
%H2=tf(1,[1 6]);
%G4=feedback(G2*G3,-H2);
%G5=feedback(G1*G4,H1/G3);
%T=feedback(G5,1)



