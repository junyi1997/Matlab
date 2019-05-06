clc;clear
C=4
K=[1e-4:1e-4:100];
% % 1
% % (a)
% d1=[1 -1 4 -4 3*C -2];
% roots(d1)
% 
% d2=[1 4 8 20*C 15];
% roots(d2)
% 
% d3=[1 -1 4 -1 3*C -2];
% roots(d3)

% % 2
% % (a)
% G2_a=tf([4],[1 -2 2 -4 -1 2*C -2 0])

% T_YR_2a=feedback(G2_a,1)
% Ans1_a=pole(T_YR_2a)

% % (b)
% G2_b=tf([8],[1 -2 -1 2 4 -8*C -4 0])
% T_YR_2b=feedback(G2_b,1)
% step(T_YR_2b)
% Ans1_b=pole(T_YR_2b)

% % (c)
% H=tf(1,[1 0])
% G2_c=tf([507],[1 3 10 30*C 169])
% T_YR_2c=feedback(G2_c,H)
% Ans1_c=pole(T_YR_2c)
% pzmap(T_YR_2c)%µe¹Ï

% 3
% (a)

% N3_a=C*[1 6];
% D3_a=poly([0 -C -3])
% GH3_a=tf(N3_a,D3_a);
% rlocus(GH3_a)
% for n=1:length(K)
%     den_3a=[1 7 12+K(n) 6*K(n)];
%     p_3a=roots(den_3a);
%     r_3a=real(p_3a);
%     if max(r_3a)>=0
%         p_3a
%         K_3a=K(n)
%         break
%     end
% end

% % (b)
% D3_b=poly([0 -2 -3 -4])
% for n=1:length(K)
%     den_3b=[1 9 26 24+K(n)*C K(n)*C];
%     p_3b=roots(den_3b);
%     r_3b=real(p_3b);
%     if max(r_3b)>=0
%         p_3b
%         K_3b=K(n)
%         break
%     end
% end
% 
% (c)
% for n=1:length(K)
%     den_3c=[1 3 -3 3+K(n)*C -4+2*C*K(n)];
%     p_3c=roots(den_3c);
%     r_3c=real(p_3c);
%     if max(r_3c)>=0
%         p_3c
%         K_3c=K(n)
%         break
%     end
% end
% Ans3_c=tf([C C*2],poly([-1i 1i 1 -4]))
% rlocus(Ans3_c)
% [K_3c,p3c]=rlocfind(Ans3_c)


% 4
% A4=[2 0 -1;0 4 6;-6 -5 -C]
% Ans4=eig(A4)

% 5
% (a)
% for n=1:length(K)
%     den_5a=[1 5.45+K(n) 11.91+(C+10)*K(n) 43.65+10*K(n)*C];
%     p_5a=roots(den_5a);
%     r_5a=real(p_5a);
%     if max(r_5a)>=0
%         p_5a
%         K_5a=K(n)
%         break
%     end
% end
% Ans5_a=tf(poly([-C -10]),conv([1 4.85],[1 0.6 9]))
% rlocus(Ans5_a)
% rlocfind(Ans5_a)

% 6
% (a)
% for n=1:length(K)
%     den_6a=[1 2.2 1.14 0.193 0.01+0.1*C*0.7*K(n)];
%     p_6a=roots(den_6a);
%     r_6a=real(p_6a);
%     if max(r_6a)>=0
%         p_6a
%         K_6a=K(n)
%         break
%     end
% end
% Ans6_a=tf(C*0.7*0.1,conv(poly([-0.4 -0.1]),[1 1.7 0.25]))
% rlocus(Ans6_a)
%rlocfind(Ans6_a)

% (b)
% for n=1:length(K)
%     den_6b=[1 130 3229 23480+(C*K(n)) 58000+(6.01*C*K(n)) 0.06*C*K(n)];
%     p_6b=roots(den_6b);
%     r_6b=real(p_6b);
%     if max(r_6b)>=0
%         p_6b
%         K_6b=K(n)
%         break
%     end
% end
% Ans6_b=tf(C*poly([-0.01 -6]),conv(poly([0 -20 -100]),[1 10 29]))
% rlocus(Ans6_b)
%rlocfind(Ans6_b)

% (c)
for n=1:length(K)
    den_6c=[1 162.1 6916 75690 507500+(1e5*K(n)) 50000+(6.6e5*K(n)) 3.6e5*K(n)];
    p_6c=roots(den_6c);
    r_6c=real(p_6c);
    if max(r_6c)>=0
        p_6c
        K_6c=K(n)
        break
    end
end
ng6_3=200*500*poly([-0.6 -6])
Ans6_c=tf(200*500*poly([-0.6 -6]),conv(poly([-0.1 -100 0 -C]),[1 12 100]))
rlocus(Ans6_c)
%rlocfind(Ans6_c)