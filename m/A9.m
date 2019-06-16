'πÍ≈Á4_EX4-a'
G1=tf(1,[1 2 3]);
G2=tf(9,[1 4]);
G3=tf([1 8],[1 5 0]);
H1=tf(3,[1 7]);
H2=tf(1,[1 6]);
L1=-G1*G2*H1;
L2=-G1*G2*G3;
L3=G2*G3*H2;
D=1-(L1+L2+L3)
M1=G2*G3;
D1=1
NY=minreal(M1*D1/D)
'EX5_b'
k=0.7;
d=[1 11.4 14 5*9*k];
roots(d)
step(T)
'EX5_b_2'
k=3;
d=[1 11.4 14 5*9*k];
roots(d)
'EX5_b_3'
k=6;
d=[1 11.4 14 5*9*k];
roots(d)
 'EX5_c'
 n=5*9*k;
 T=tf(n,d);
 
  'EX5_d'
  K=0.338;
  G1=tf(K,[1 10]);
  G2=tf(5*9,[1 1.4 0]);
  T=feedback(G1*G2,1);
  'EX6_a'
  G1=tf(1,[1 12]);
  G2=tf(20,[1 0]);
  H=tf([0.2 0],1);
  G3=9+10;
  G4=feedback(G1*G2,H);
  T=feedback(G3*G4,1)
  [n,d]=tfdata(T,'v')
  wn=sqrt(d(3))
  z=d(2)/(2*wn)
  step(T)
  'EX7_a'
  n=9*poly([-2 -3]);
  d=poly([-1 -4 -5 -6]);
  G=tf(n,d);
  T=feedback(G,1)
  'EX7_b_c'
  n=9*poly([-2 -3]);
  d=poly([-1 -4 -5 -6]);
  G=tf(n,d);
  T=feedback(G,1)
  [nt,dt]=tfdata(T,'v')
  [Acc,Bcc,Ccc,Dcc]=tf2ss(nt,dt)
  Sc=ss(Acc,Bcc,Ccc,Dcc);
  Sd=canon(Sc,'modal')
  'EX8'
  A=[2  0  -1;0  4  6;-6  -5  -9];
  B=[2;0;1];
  C=[2 5 3];
  D=0;
  Pinv=[2 1 -4;1 -2 0;4 6 2];
  P=inv(Pinv);
  Az=Pinv*A*P
  Bz=Pinv*B
  Cz=C*P
  D
  'EX9'
  A=[-5 -5 4;2 0 -2;0 2 -1];
  B=[-1;2;-2];
  C=[-1 1 9];
  D=0;
  [P,d]=eig(A);
  Ap=inv(P)*A*P
  Bp=inv(P)*B
  Cp=C*P
  Dp=D
  
  
  
  
 
  
  