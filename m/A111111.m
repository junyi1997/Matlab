'���礭EX1'
d=[1 -1 4 -4 3*9 -2];               %A�p�D
roots(d)
'���礭EX1'
d=[1 4 8 20*9 15];                  %B�p�D
roots(d)
'���礭EX1'
d=[1 -1 3 -3 2*9 -2];               %C�p�D
roots(d)
'���礭EX2_a'
n=4;
d=[1 -2 2 -4 -1 2*9 -2 0];            %A�p�D
G=tf(n,d);
T=feedback(G,1)
pole(T)
'���礭EX2_b'
n=8;
d=[1 -2 -1 2 4 -8*9 -4 0];           %B�p�D
G=tf(n,d);
T=feedback(G,1)
pole(T)
'���礭EX2_c'
n=507;
d=[1 3 10 30*9 169];           %C�p�D
G=tf(n,d);
H=tf(1,[1 0]);
T=feedback(G,H)
pole(T)
%pzmap(T)                        %�Χ@�Ϫ���k�䵪��
'���礭EX3_a'
K=-0.1:1e-4:-100;
for n=1:length(K)               %length�O��K���X��
    d=[1 6 11 6+K(n)];
    p=roots(d);
    r=real(p);
    if max(r)>=0,
        p
        K=K(n)
        break
    end
end






