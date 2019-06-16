OS=0.1;
x=log(OS)^2;
z=sqrt(x/(x+pi^2))
w=4/(z*Ts)
GH=tf(1,poly([0 -1 -2 -3]));
figure(1)
rlocus(GH)
z=0.2:0.1:0.9;
w=0.1:0.1:1;
sgrid(z,w)
[K,p]=rlocfind(GH)
TYR=feedback(K*GH,1)
figure(2)
step(TYR)




