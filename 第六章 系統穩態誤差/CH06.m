clc;clear
C=4
% 1
% (a)
% G_1a=tf(conv(20,poly([-3 -C -8])),conv([1 0 0],poly([-2 -15])));
% T_1a=feedback(G_1a,1);
% step(T_1a)
% poles=pole(T_1a)
% S_2_1a=tf([1 0 0],1);
% S2G_1a=minreal(S_2_1a*G_1a);
% Ka_1a=dcgain(S2G_1a)
% ess_1a=1/Ka_1a

% (b)
% G_1b=tf(500*C,conv([1 20],[1 4 10]));
% T_1b=feedback(G_1b,1);
% poles=pole(T_1b)
% Kp_1b=dcgain(G_1b)
% ess_step_1b=40/(1+Kp_1b)
% S_1_1b=tf([1 0],1);
% SG_1b=minreal(S_1_1b*G_1b);
% Kv_1b=dcgain(SG_1b)
% ess_Ramp_1b=70/Kv_1b
% S_2_1b=tf([1 0 0],1);
% S2G_1b=minreal(S_2_1b*G_1b);
% Ka_1b=dcgain(S2G_1b)
% ess_1b=80*2/Ka_1b

% % (c)
% G_1c=tf(conv(1000,poly([-12 -C -32])),poly([-61 -73 -87]));
% T_1c=feedback(G_1c,1);
% poles=pole(T_1c)
% Kp_1c=dcgain(G_1c)
% ess_step_1c=15/(1+Kp_1c)

% % 2
% G1_2=tf(1,[1 0])
% G2_2=tf(5,[1 1])
% H1_2=C
% H2_2=tf([1 3],1)
% G3_2=feedback(G2_2,H1_2)
% G_2=feedback(G3_2*G1_2,H2_2)
% T_2=tf(G_2,1)
% step(T_2)
% %'step'
% poles=pole(T_2)
% Kp_2=dcgain(G_2)
% ess_step_2=15/(1+Kp_2)

% % 3
% % (a)圖二
% G1_3a=tf(1,[1 1 0 0])
% G2_3a=tf(C,[1 3 0 0])
% H1_3a=tf(1,[1 0])
% G3_3a=feedback(G1_3a,H1_3a)
% T_3a=tf(G3_3a*G2_3a,1)
% %STEP
% Kp_3a=dcgain(T_3a)
% ess_Step_3a=5/(1+Kp_3a)
% %Ramp
% S1_3a=tf([1 0],1)
% SG_3a=minreal(S1_3a*T_3a)
% Kv_3a=dcgain(SG_3a)
% ess_Ramp_3a=5/Kv_3a

% % (b)圖三
% G1_3b=C;
% G2_3b=tf(10,poly([0 -1 -3 -4]));
% H1_3b=tf([2 0],1);
% G3_3b=feedback(G2_3b,H1_3b);
% T_3b=tf(G1_3b*G3_3b,1)
% %STEP
% Kp_3b=dcgain(T_3b);
% ess_Step_3b=5/(1+Kp_3b)
% %Ramp
% S1_3b=tf([1 0],1);
% SG_3b=minreal(S1_3b*T_3b);
% Kv_3b=dcgain(SG_3b);
% ess_Ramp_3b=5/Kv_3b

% (c)圖四
G1_3c=tf([10 100],[1 2 0]);
H1_3c=tf([1 C],1);
T_3c=feedback(G1_3c,H1_3c);
%STEP
Kp_3c=dcgain(T_3c);
ess_Step_3c=5/(1+Kp_3c)
%Ramp
S1_3c=tf([1 0],1);
SG_3c=minreal(S1_3c*T_3c);
Kv_3c=dcgain(SG_3c);
ess_Ramp_3c=5/Kv_3c

% % (d)圖五
% G1_3d=20;
% G2_3d=tf([1 4],poly([-5 -8]));
% G3_3d=10;
% H1_3d=C;
% G4_3d=feedback(G2_3d,H1_3d);
% T_3d=tf(G1_3d*G3_3d*G4_3d)
% %STEP
% Kp_3d=dcgain(T_3d);
% ess_Step_3d=5/(1+Kp_3d)
% %Ramp
% S1_3d=tf([1 0],1);
% SG_3d=minreal(S1_3d*T_3d);
% Kv_3d=dcgain(SG_3d);
% ess_Ramp_3d=5/Kv_3da