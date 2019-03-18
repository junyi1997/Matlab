%1

A1=[0 0.005;-250000 -5000];
B1=[0;2500];
C1=[0 1];
D1=0;
[num1,den1]=ss2tf(A1,B1,C1,D1,1)

%2

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

%4
R=74.4805;
A4=[0 250000;-100 -100*R];
B4=[0;100];
C4=[1 0];
D4=0;
[num4,den4]=ss2tf(A4,B4,C4,D4,1)

Den4=[1 100*R 25000000];
%計算自然頻?
omegan4=sqrt(Den4(3)/Den4(1));
%計算阻尼比
zeta4=(Den4(2)/Den4(1))/(2*omegan4);
%計算安定時間
Ts4=4/(zeta4*omegan4);
%計算峰值時間
Tp4=pi/(omegan4*sqrt(1-zeta4^2));
%計算超越?百分比
pos4=100*exp(-zeta4*pi/sqrt(1-zeta4^2));

%5
%清所有圖形
clf;
Den5_1=[1 4 98.168];
Den5_2=conv([1 4 24.542],[1 40]);
Den5_3=conv([1 4 24.542],[1 4]);
%計算自然頻?
omegan5_1=sqrt(Den5_1(3)/Den5_1(1));
%計算阻尼比
zeta5_1=(Den5_1(2)/Den5_1(1))/(2*omegan5_1);
%計算安定時間
Ts5_1=4/(zeta5_1*omegan5_1);
%計算峰值時間
Tp5_1=pi/(omegan5_1*sqrt(1-zeta5_1^2));
%計算超越?百分比
pos5_1=100*exp(-zeta5_1*pi/sqrt(1-zeta5_1^2));
%系統以轉移函?表示
T5_1=tf(Den5_1(3),Den5_1);
%求系統的步階響應
step(T5_1);
%標示抬頭
title(' Step Responses of T1(s) ');
%暫停(按任意鍵繼續)
pause	;
%將系統3的步階響應存到y5_1 t5_1
[y5_1,t5_1]=step(T5_1);

%5_2

%系統以轉移函?表示
T5_2=tf(Den5_2(4),Den5_2);
%求系統的步階響應
step(T5_2);
%標示抬頭
title(' Step Responses of T2(s) ');
%暫停(按任意鍵繼續)
pause	;
%將系統3的步階響應存到y5_2 t5_2
[y5_2,t5_2]=step(T5_2);

%5_3

%系統以轉移函?表示
T5_3=tf(Den5_3(4),Den5_3);
%求系統的步階響應
step(T5_3);
%標示抬頭
title(' Step Responses of T3(s) ');
%暫停(按任意鍵繼續)
pause	;
%將系統3的步階響應存到y5_3 t5_3
[y5_3,t5_3]=step(T5_3);
clf;
plot(t5_1,y5_1,t5_2,y5_2,t5_3,y5_3)

%格線
grid
%標示三個系統
legend('T5_1(S)','T5_2(S)','T5_3(S)')
%標示抬頭
title('Step Responses of T5_1(s),T5_2(s),and T5_3(s)')
%標示X座標的名稱
xlabel('Time(sec)')	
%標示Y座標的名稱
ylabel('Response')	

%245.42*4=981.68
%24.542*4=98.168
