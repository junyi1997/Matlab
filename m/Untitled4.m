K=0.01:1e-5:20;
for n=1:length(K)               %length是算K有幾個
    d=[1 121.1 2320 2.193e4 92170+100000*K(n) 9000+660000*K(n) 3.6e5*K(n)];
    p=roots(d);
    r=real(p);
    if max(r)>=0,
        p
        K=K(n)
        break
    end
end