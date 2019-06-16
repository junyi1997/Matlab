'EX3_b'
G1=tf(1,[1 2 3]);
G2=tf(9,[1 4]);
G3=tf([1 8],[1 5 0]);
H1=tf(3,[1 7]);
H2=tf(1,[1 6]);
L1=-G1*G2*G3;
L2=-G1*G2*H1;
L3=G2*G3*H2;
D=minreal(1-(L1+L2+L3))
M1=1;
D1=1-L3;
RE1=minreal(M1*D1/D)
'EX3_c'
M1=G1;
D1=1;
RE2=minreal(M1*D1/D)
'EX3_d'
M1=G1*G2;
D1=1;
RE3=minreal(M1*D1/D)
step(RE3,0:1e-3:10)