% 1
    P=[1 3 10 24 46 96 128 192 4];	
    Q=[12 19 6];
    % 1(a) 		
        Ans_1_a=roots(P) %解P1的根
    % 1(b)
        Ans_1_b=conv(P,Q);
    % 1(c)
        R=poly([-3 -4 -6 -10 -32 35]);
        Ans_1_c=R
    % 1(d)    
        Ans_1_d=polyval(P,-5);

% 2
    F1=conv(poly([-7 -2 -9],50,4));
    F2=conv(poly([0 0 -27],[1 2 10]));
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
    
    