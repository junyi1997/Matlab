'ex7-2'
OS=0.3;
x=log(OS)^2;
z=sqrt(x/(x+pi^2))
G=tf(1,poly([-2 -3]));
H=tf([1  -4   9],[1  2  5]);
GH=series(G,H);
figure(1)
rlocus(GH)
sgrid(z,0)
[K,p]=rlocfind(GH)
TYR=feedback(1.699*G,H)
figure(2)
step(TYR)


