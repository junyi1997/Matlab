n=200*500*poly([-0.6 -6])                        %��y���
d1=poly([-0.1 -100 0 -9]);
d=conv(d1,[1 12 100]);
GH=tf(n,d)
rlocus(GH)
rlocfind(GH)



