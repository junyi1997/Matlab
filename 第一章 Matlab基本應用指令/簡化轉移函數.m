%*簡化轉移函數
%Ex.
%           S^2 + 5S + 6
%F(S) =  -----------------
%         S^3 + 3S^2 + 2S

%指令：
Num= [1 5 6];
Den= [1 3 2 0];
F=tf(Num, Den) minreal(F)
%ans=
%Transfer function: s + 3
%                  -------
%                  s^2 + s
