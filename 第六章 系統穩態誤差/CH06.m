clc;clear
C=4
% 1
% (a)
G_1a=tf(conv(20,poly(-3 -C -8)),conv([1 0 0],poly(-2 -15)));
T_1a=feedback(G_1a,1);
poles=pole(T_1a)
Kp_1a=dcgain(G_1a)
ess_step_1a=1/(1+Kp_1a)
S_1_1a=tf([1 0],1);
SG_1a=minreal(S_1_1a*G_1a);
Kv_1a=dcgain(SG_1a)
ess_Ramp_1a=1/Kv_1a
S_2_1a=tf([1 0 0],1);
S2G_1a=minreal(S_2_1a*G_1a);
Ka_1a=dcgain(S2G_1a)
ess_1a=1/Ka_1a

% (b)
G_1b=tf(500*C,conv([1 20],[1 4 10]));
T_1b=feedback(G_1b,1);
poles=pole(T_1b)
Kp_1b=dcgain(G_1b)
ess_step_1b=1/(1+Kp_1b)
S_1_1b=tf([1 0],1);
SG_1b=minreal(S_1_1b*G_1b);
Kv_1b=dcgain(SG_1b)
ess_Ramp_1b=1/Kv_1b
S_2_1b=tf([1 0 0],1);
S2G_1b=minreal(S_2_1b*G_1b);
Ka_1b=dcgain(S2G_1b)
ess_1b=1/Ka_1b

% (c)
G_1c=tf(conv(1000,poly(-12 -C -8)),poly(-61 -73 -87));
T_1c=feedback(G_1c,1);
poles=pole(T_1c)
Kp_1c=dcgain(G_1c)
ess_step_1c=1/(1+Kp_1c)
S_1_1c=tf([1 0],1);
SG_1c=minreal(S_1_1c*G_1c);
Kv_1c=dcgain(SG_1c)
ess_Ramp_1c=1/Kv_1c
S_2_1c=tf([1 0 0],1);
S2G_1c=minreal(S_2_1c*G_1c);
Ka_1c=dcgain(S2G_1c)
ess_1c=1/Ka_1c