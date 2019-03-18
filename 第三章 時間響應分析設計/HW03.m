%1 A[0  (1/L)  (-1/C)  (-1/C)(1/R1+1/R2)]，B[0  1/(C*R1)]，C[0 1]，D[0]
L=200 ;C=4e-6;R1=100;R2=100;V=100;V2=12;
A1=[0 (1/L);-(1/C) -(1/C)*(1/R1+1/R2)];
B1=[0;(1/(C*R1))];
C1=[0 1];
C1_1=[1 0];
D1=0;
[num1,den1]=ss2tf(A1,B1,C1,D1,1)
Tss=ss(A1,B1,C1,D1)
Tss1=ss(A1,B1,C1_1,D1)
grid
step(Tss1)


%2

Vcmax=V*0.5
PR2=Vcmax^2/R2
PR1=V^2/R1
Vcmax1=V2*0.5
PR21=Vcmax1^2/R2
PR11=V2^2/R1

%3

%a
Den3_1=[1 4 121];
%計算自然頻?
omegan3_1=sqrt(Den3_1(3)/Den3_1(1));
%計算阻尼比
zeta3_1=(Den3_1(2)/Den3_1(1))/(2*omegan3_1);
%計算安定時間
Ts3_1=4/(zeta3_1*omegan3_1);
%計算峰值時間
Tp3_1=pi/(omegan3_1*sqrt(1-zeta3_1^2));
%計算超越?百分比
pos3_1=100*exp(-zeta3_1*pi/sqrt(1-zeta3_1^2));
%系統以轉移函?表示
T3_1=tf(Den3_1(3),Den3_1);
%求系統的步階響應
step(T3_1);


%b
Den3_2=[1 4 0.04];
%計算自然頻?
omegan3_2=sqrt(Den3_2(3)/Den3_2(1));
%計算阻尼比
zeta3_2=(Den3_2(2)/Den3_2(1))/(2*omegan3_2);
%計算安定時間
Ts3_2=4/(zeta3_2*omegan3_2);
%計算峰值時間
Tp3_2=pi/(omegan3_2*sqrt(1-zeta3_2^2));
%計算超越?百分比
pos3_2=100*exp(-zeta3_2*pi/sqrt(1-zeta3_2^2));
%系統以轉移函?表示
T3_2=tf(Den3_2(3),Den3_2);
%求系統的步階響應
step(T3_2);


%c
Den3_3=[1 4000 1.05e7];
%計算自然頻?
omegan3_3=sqrt(Den3_3(3)/Den3_3(1));
%計算阻尼比
zeta3_3=(Den3_3(2)/Den3_3(1))/(2*omegan3_3);
%計算安定時間
Ts3_3=4/(zeta3_3*omegan3_3);
%計算峰值時間
Tp3_3=pi/(omegan3_3*sqrt(1-zeta3_3^2));
%計算超越?百分比
pos3_3=100*exp(-zeta3_3*pi/sqrt(1-zeta3_3^2));
% 系統以轉移函?表示
T3_3=tf(Den3_3(3),Den3_3);
% 求系統的步階響應
step(T3_3);


%4
% R=21.07;L1=10e-3;Cf=50e-6;
% AA=[0 1/Cf;-1/L1 -R/L1];
% BB=[0;1/L1];
% CC=[1 0];
% DD=0
% Tss1=ss(AA,BB,CC,DD)
% step(Tss)

% %5
% %清所有圖形
% clf;
% Den5_1=[1 4 98.168];
% Den5_2=conv([1 4 24.542],[1 40]);
% Den5_3=conv([1 4 24.542],[1 4]);
% %計算自然頻?
% omegan5_1=sqrt(Den5_1(3)/Den5_1(1));
% %計算阻尼比
% zeta5_1=(Den5_1(2)/Den5_1(1))/(2*omegan5_1);
% %計算安定時間
% Ts5_1=4/(zeta5_1*omegan5_1);
% %計算峰值時間
% Tp5_1=pi/(omegan5_1*sqrt(1-zeta5_1^2));
% %計算超越?百分比
% pos5_1=100*exp(-zeta5_1*pi/sqrt(1-zeta5_1^2));
% % 系統以轉移函?表示
% T5_1=tf(Den5_1(3),Den5_1);
% %求系統的步階響應
% step(T5_1);
% %標示抬頭
% title(' Step Responses of T1(s) ');
% %暫停(按任意鍵繼續)
% pause	;
% %將系統3的步階響應存到y5_1 t5_1
% [y5_1,t5_1]=step(T5_1);
% 
% %5_2
% 
% %系統以轉移函?表示
% T5_2=tf(Den5_2(4),Den5_2);
% %求系統的步階響應
% step(T5_2);
% %標示抬頭
% title(' Step Responses of T2(s) ');
% %暫停(按任意鍵繼續)
% pause	;
% %將系統3的步階響應存到y5_2 t5_2
% [y5_2,t5_2]=step(T5_2);
% 
% %5_3
% 
% %系統以轉移函?表示
% T5_3=tf(Den5_3(4),Den5_3);
% %求系統的步階響應
% step(T5_3);
% %標示抬頭
% title(' Step Responses of T3(s) ');
% %暫停(按任意鍵繼續)
% pause	;
% %將系統3的步階響應存到y5_3 t5_3
% [y5_3,t5_3]=step(T5_3);
% clf;
% plot(t5_1,y5_1,t5_2,y5_2,t5_3,y5_3)
% 
% %格線
% grid
% %標示三個系統
% legend('T5_1(S)','T5_2(S)','T5_3(S)')
% %標示抬頭
% title('Step Responses of T5_1(s),T5_2(s),and T5_3(s)')
% %標示X座標的名稱
% xlabel('Time(sec)')	
% %標示Y座標的名稱
% ylabel('Response')	