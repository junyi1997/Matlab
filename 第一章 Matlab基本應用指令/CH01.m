% 1
    P=[1 3 10 24 46 96 128 192 4];	
    Q=[12 19 6];
    % 1(a) 9		
        Ans_1_a=roots(P) %解P1的根
    % 1(b)
        Ans_1_b=conv(P,Q);
    % 1(c)
        R=poly([-3 -4 -6 -10 -32 35]);
        Ans_1_c=R
    % 1(d)    
        Ans_1_d=polyval(P,-5);

% 2
    F1_1=[1 27];
    F1_2=[1 0 0];98
    F1_3=[1 2 10];
    
    F1=conv(poly([-7 -2 -9]),200);
    F2=conv(conv(F1_1,F1_2),F1_3);
    Ans_2_1=F1; %分子
    Ans_2_2=F2; %分母

% 3
    A=[1 2 3;4 4 6;7 8 9];
    B=[4 12 13; 14 15 16;17 18 19];
    % 3 A+B 
       Ans_3_1 =A+B;
    % 3 A*B 
       Ans_3_2 =A*B;
    % 3 B*A 
       Ans_3_3 =B*A;
    % 3 B^-1 
       Ans_3_4 =inv(B);
    % 3 A^5 
       Ans_3_5 =A^5;
% 4
    C=[2 1 0 4 ;5 0 4 3;6 4 0 19;-1 3 2 0];
    Ans_4_1=det(C);
% 5
    Z_5=[3 -1 1;5 -6 5;5 -2 2];
    V_5=[4;-3;4];
    Ans_5=inv(Z_5)*V_5;
%6
    Z_6=[7 -8 3;-1 5 1;3 4 -3];
    V_6=[0;40;0];
    Ans_6=inv(Z_6)*V_6;
%7
    Z_7=[5 -1 -1;-1 4 -3;-1 -1 4];
    V_7=[4;20;-20];
    Ans_7=inv(Z_7)*V_7;
%8  
    Z_8=[6-4i -5+6i;-15+6i 18-2i];
    V_8=[40;0];
    Ans_8=inv(Z_8)*V_8; 
%9
    num_9=128;	% 輸入分子係數
    den_9=conv([1 12 32],[1 0]);	% 輸入分母係數
    [K_9,p_9,k_9]=residue(num_9,den_9)	% 其對應係數
%10   
    num_10=[1 30 8];	% 輸入分子係數
    den_10=conv([1 17 117 425 894 1118 788 240],[1 0]);	% 輸入分母係數
    [K_10,p_10,k_10]=residue(num_10,den_10)	% 其對應係數