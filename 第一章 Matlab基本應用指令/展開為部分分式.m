%*展開為部分分式
%Ex1.
%         (S+3)*(S+4)
%F(S)=  ---------------
%        S*(S+1)*(S+2)
%指令：
num=poly([-3 -4]);	% 輸入分子係數
den=poly([0 -1 -2]);	% 輸入分母係數
[K,p,k]=residue(num,den)	% 其對應係數

%ans=
%K =	
    %1	 %分母為(S+2)的分子係數
    %-6  %分母為(S+1)的分子係數
    %6	 %分母為S的分子係數

%p =		
	%-2	 %分母為(S+2)
	%-1	 %分母為(S+1)
	%0	 %分母為S

%k =		
    %[]	%分子/分母的商

%           1       -6        6
%即F(S)= ------- + ------ +  ---
%         (S+2)    (S+1)      S

%Ex2.
%                S+3
%F(S)=  ---------------------
%        [S(S+1)(S^2+2*S+2)]
%指令：

num= [1 3];	% 輸入分子係數
den=conv(poly([0 -1]),[1 2 2]);	% 輸入分母係數
[K,p,k]=residue(num,den);	% 其對應係數

%ans=
    %K =
        %0.2500 + 0.7500i	%分母為(S+1-j)的分子係數
        %0.2500 - 0.7500i	%分母為(S+1+j)的分子係數
        %-2.0000	%分母為(S+1)的分子係數
        %1.5000	%分母為S的分子係數
    %p =
        %-1.0000 + 1.0000i	%分母為(S+1-j)
        %-1.0000 - 1.0000i	%分母為(S+1+j)
        %-1.0000	%分母為(S+1)
        %0	%分母為S
    %k =
        %[]	%分子/分母的商
%        -(0.25+0.75)      (0.25-j0.75)        -2        1.5
%即F(S)= ------------  +  --------------  +  ------  +  -----
%           (S+1-j)            (S+1+J)         (S+1)       S 

%可以將含虛數的項目合併
%指令：
G1=tf(K(1),poly([p(1)]));
G2=tf(K(2),poly([p(2)]));
G1+G2

%ans=
%Transfer function:
    %    0.5 s - 1
    %  -------------
    %  s^2 + 2 s + 2

