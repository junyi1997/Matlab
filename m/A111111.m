'實驗五EX1'
d=[1 -1 4 -4 3*9 -2];               %A小題
roots(d)
'實驗五EX1'
d=[1 4 8 20*9 15];                  %B小題
roots(d)
'實驗五EX1'
d=[1 -1 3 -3 2*9 -2];               %C小題
roots(d)
'實驗五EX2_a'
n=4;
d=[1 -2 2 -4 -1 2*9 -2 0];            %A小題
G=tf(n,d);
T=feedback(G,1)
pole(T)
'實驗五EX2_b'
n=8;
d=[1 -2 -1 2 4 -8*9 -4 0];           %B小題
G=tf(n,d);
T=feedback(G,1)
pole(T)
'實驗五EX2_c'
n=507;
d=[1 3 10 30*9 169];           %C小題
G=tf(n,d);
H=tf(1,[1 0]);
T=feedback(G,H)
pole(T)
%pzmap(T)                        %用作圖的方法找答案
'實驗五EX3_a'
K=-0.1:1e-4:-100;
for n=1:length(K)               %length是算K有幾個
    d=[1 6 11 6+K(n)];
    p=roots(d);
    r=real(p);
    if max(r)>=0,
        p
        K=K(n)
        break
    end
end






