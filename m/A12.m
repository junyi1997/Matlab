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
K=0:1e-5:-100;
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
'���礭EX4'
A=[2 0 -1;0 4 6;-6 -5 -9];
eig(A)
'���礭EX5'
ng=9*0.7*0.1;
d1=poly([-0.4 -0.1]);
dg=conv(d1,[1 1.7 0.25])
GH=tf(ng,dg);
rlocus(-GH)
rlocfind(GH)

K=-1e-4:-10;
for n=1:length(K)               %length�O��K���X��
    d=[1    5.45+K(n)   11.91+K(n)*(9+10)  43.65+10*K(n)*9];
    p=roots(d);
    r=real(p);
    if max(r)>=0,
        p
        K=K(n)
        break
    end
end
'���礭EX6'
K=-0.01:-1e-5:-10;
for n=1:length(K)               %length�O��K���X��
    d=[1    2.2   1.14  0.193  0.01+0.1*9*0.7*K(n)];
    p=roots(d);
    r=real(p);
    if max(r)>=0,
        p
        K=K(n)
        break
    end
end
'���礭EX6-B'
K=0.01:1:100000;
for n=1:length(K)               %length�O��K���X��
    d=[1 130 3229 23480+9*K(n) 5800+6.01*9*K(n) 0.06*9*K(n)];
    p=roots(d);
    r=real(p);
    if max(r)>=0,
        p
        K=K(n)
        break
    end
end
'���礭EX6-C'
K=0.01:1e-5:20;
for n=1:length(K)               %length�O��K���X��
    d=[1 121.1 2320 2.193e4 92170+100000*K(n) 9000+660000*K(n) 3.6e5*K(n)];
    p=roots(d);
    r=real(p);
    if max(r)>=0,
        p
        K=K(n)
        break
    end
end






