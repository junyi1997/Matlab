'ex7-4'
G1=tf(1,[1  7  1220]);
G2=tf(12,[1  0]);
H1=tf([0.00076   0],[1     0.06]);
H2=tf([1    0     0],1);
H3=tf([0.02    0],1);
G=series(G1,G2);
H4=series(H1,H2);
H=minreal(H4+H3+1)
z=0.707
GH=series(G,H);
figure(1)
rlocus(GH)
sgrid(z,0)
[K,p]=rlocfind(GH)
TYR=feedback(K*G,H)
figure(2)
step(TYR)
