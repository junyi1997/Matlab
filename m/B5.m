'ex7-3'
z=0.707;
G=tf(1,poly([0 -3 -7 -8]));
H=tf([1  9],[1  20  200]);
GH=series(G,H);
figure(1)
rlocus(GH,0:2e4)
sgrid(z,0)
[K,p]=rlocfind(GH)
%TYR=feedback(1.699*G,H)
%figure(2)
%step(TYR)
