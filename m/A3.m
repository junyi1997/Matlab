'Ex1'
R1=100;R2=100;L=200;Cf=9e-6;Vin=100;
A=[0 1/L;-1/Cf -1/Cf*(1/R1+1/R2)]
B=[0;1/(Cf*R1)]
C=[0 1]
D=0
Tss=ss(A,B,C,D)
tf(Tss)
step(Tss)
Vcmax=Vin*0.5;
PR2=Vcmax^2/R2
PR1=Vin^2/R1

'EX2'
R1=100;R2=100;L=200;Cf=9e-6;Vin=12;
A=[0 1/L;-1/Cf -1/Cf*(1/R1+1/R2)]
B=[0;1/(Cf*R1)]
C=[0 1]
D=0
Tss=ss(A,B,C,D)
tf(Tss)
step(Tss)
Vcmax=Vin*0.5;
PR2=Vcmax^2/R2
PR1=Vin^2/R1
'EX3-1'
n = 121;
d = [1 9 121];
wn =sqrt(d(3))
z = d(2)/(2*wn)
T = tf(n,d);
step(T)
'EX3-2'
n = 0.04;
d = [1 9 0.04];
wn =sqrt(d(3))
z = d(2)/(2*wn)
T = tf(n,d);
step(T)
'EX3-3'
n = 1.05e7;
d = [1 9e3 1.05e7];
wn =sqrt(d(3))
z = d(2)/(2*wn)
T = tf(n,d);
step(T)
'Ex4'
R = 49.66;L =10e-3;Cf = 9e-6;
A = [0 1/Cf;-1/L -R/L];
B = [0;1/L];
C = [1 0];
D = [0];
Tss=ss(A,B,C,D)
step(Tss)
'Ex5'
n1 = 24.542*9;
d1 = [1 4 24.542*9];
T1 = tf(n1,d1);
step(T1)
n2 = 24.542*9;
d2 =conv([1 4 24.542],[1 90]);
T2 = tf(n2,d2);
step(T2)
n3 = 24.542*9;
d3 =conv([1 4 24.542],[1 9]);
T3 = tf(n3,d3);
step(T1,T2,T3)



