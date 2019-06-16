K=-0.001:1e-5:-10;
for n=1:length(K)               %length是算K有幾個
    d=[1    2.2   1.14  0.193  0.01+0.1*9*0.7*K(n)];
    p=roots(d);
    r=real(p);
    if max(r)>=0,
        p
        K=K(n)
        break
    end
end