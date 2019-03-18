%1-1
num1=[5 4];
den1=[1 2 3 4 5];
[A1,B1,C1,D1]=tf2ss(num1,den1);

%1_2
P1=[0 0 0 1;0 0 1 0;0 1 0 0;1 0 0 0];
Ap1=inv(P1)*A1*P1;
Bp1=inv(P1)*B1;
Cp1=C1*P1;
Dp1=D1;

%2-2
num2=[1 2 12 7 3]
den2=[1 9 10 4 0 0]
[A2,B2,C2,D2]=tf2ss(num2,den2)

%2_1
P2=[0 0 0 0 1;0 0 0 1 0;0 0 1 0 0;0 1 0 0 0;1 0 0 0 0]
Ap2=inv(P2)*A2*P2
Bp2=inv(P2)*B2
Cp2=C2*P2
Dp2=D2

%3-1
A3=[-4.5 -0.5 0.5;0.5 -0.5 0.5;0.5 -0.5 -0.5];
B3=[4; 0; 0];
C3=[0 0 1];
D3=0;
E3=ss(A3,B3,C3,D3,1);
tf(E3);
step(E3);

%4-1
A4_1=[0 1 3 0;0 0 1 0;0 0 0 1;-7 -9 -2 -3];
B4_1=[0;5;8;2];
C4_1=[1 3 4 4];
D4_1=0;
[num4_1,den4_1]=ss2tf(A4_1,B4_1,C4_1,D4_1,1);

%4-2
A4_2=[3 1 0 4 -2;-3 5 -5 2 -1;0 1 -1 2 8;-7 6 -3 -4 0;-6 0 4 -3 1];
B4_2=[2;7;6;5;4];
C4_2=[1 -2 -9 7 4];
D4_2=0;
[num4_2,den4_2]=ss2tf(A4_2,B4_2,C4_2,D4_2,1);

%5
A5=[-1.702 50.72 263.38;0.22 -1.418 -31.99;0 0 -14];
B5=[-272.06;0;4];
C5_1=[1 0 0];
C5_2=[0 1 0];
D5=0;
[num5_1,den5_1]=ss2tf(A5,B5,C5_1,D5,1);
[num5_2,den5_2]=ss2tf(A5,B5,C5_2,D5,1);


%111



