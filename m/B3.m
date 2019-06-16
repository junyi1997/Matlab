'ex7-1'
OS=0.1;
x=log(OS)^2;
z=sqrt(x/(x+pi^2))
n=1;
d=poly([0 -3 -4 -17]);
GH=tf(n,d)
figure(1)
rlocus(GH,0:9e3)
sgrid(z,0)
[K,p]=rlocfind(GH)
TYR=feedback(197*GH,1)
figure(2)
step(TYR,0:600)    
