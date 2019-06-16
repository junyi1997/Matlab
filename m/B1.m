'實驗六EX1-a'
n=20*poly([-3 -9 -8]);
d=poly([0 0 -2 -15]);
G=tf(n,d);
T=feedback(G,1);
pole(T)
%step(T)
S2=tf([1 0 0],1);
S2G=minreal(S2*G);
Ka=dcgain(S2G)
ess=60/Ka
'實驗六EX1-b'
n=500*9;
d=conv([1 20],[1 4 10]);
G=tf(n,d);
T=feedback(G,1);
pole(T)
%step(T)
%Kp=dcgain(G)       如果穩定再打(步階)
%ess_step=40/(1+Kp)
'Ramp斜波(如果穩定再打)'
%S1=tf([1 0],1);
%SG=minreal(S1*G);
%Kv=dcgain(SG)
%ess=1/Kv
'拋物線(如果穩定再打)'
%S2=tf([1 0 0],1);
%S2G=minreal(S2*G);
%Ka=dcgain(S2G)
%ess=160/Ka
'實驗六EX1-c'
n=1000*poly([-12 -9 -32]);
d=poly([-61 -73 -87]);
G=tf(n,d);
T=feedback(G,1);
pole(T)
%step(T)
Kp=dcgain(G)      
ess_step=15/(1+Kp)
'實驗六EX2'
G1=tf(1,[1 0]);
G2=tf(5,[1 1]);
H1=9;
H2=tf([1 3],1);
G3=feedback(G2,H1);
G=feedback(G1*G3,H2);
T=feedback(G,1);
pole(T)
%step(T)
Kp=dcgain(G)      
ess_step=15/(1+Kp)
'實驗六EX3-a'
n1=1;
d1=[1 1 0 0];
G1=tf(n1,d1);
n2=9;
d2=[1 3 0 0];
G2=tf(n2,d2);
H=tf(1,[1 0]);
G3=feedback(G1,H);
'step'
G=series(G3,G2)
Kp=dcgain(G);
ess_step=5/(1+Kp)
'Ramp'
S1=tf([1 0],1);
SG=minreal(S1*G);
Kv=dcgain(SG);
ess_Ramp=5/Kv
'實驗六EX3-b'
G1=9;
n2=10;
d2=poly([0 -1 -3 -4]);
G2=tf(n2,d2);
H=tf([2 0],1);
G3=feedback(G2,H);
G=series(G1,G3)
'step'
Kp=dcgain(G);
ess_step=5/(1+Kp)
'Ramp'
S1=tf([1 0],1);
SG=minreal(S1*G);
Kv=dcgain(SG);
ess_Ramp=5/Kv
'實驗六EX3-c'
G1=9;
n2=10;
d2=poly([0 -1 -3 -4]);
G2=tf(n2,d2);
H=tf([2 0],1);
G3=feedback(G2,H);
G=series(G1,G3)
'step'
Kp=dcgain(G);
ess_step=5/(1+Kp)
'Ramp'
S1=tf([1 0],1);
SG=minreal(S1*G);
Kv=dcgain(SG);
ess_Ramp=5/Kv
'實驗六EX4'
n1=[1 7];
d1=poly([0 -4 -8 -12]);
G1=tf(n1,d1);
n2=5*poly([-9 -13]);
d2=poly([-10 -32 -64]);
G2=tf(n2,d2);
H1=9;
H2=tf(1,[1 3]);
G3=feedback(G2,H1);
G=feedback(G1*G3,H2);
'step'
Kp=dcgain(G)
ess_step=30/(1+Kp)
'Ramp'
S1=tf([1 0],1);
SG=minreal(S1*G);
Kv=dcgain(SG)
ess_Ramp=30/Kv
'Parabolic'
S2=tf([1 0 0],1);
S2G=minreal(S2*G);
Ka=dcgain(S2G)
ess_Parabolic=60/Ka
'實驗7EX1'













