n=[-6];                        %��y���
d=poly([0 -9 -3])
GH=tf(n,d);
rlocus(GH)
rlocfind(GH)
'���礭EX5'
ng=poly([-9 -10]);
dg=conv([1 4.85],[1 0.6 9])
GH=tf(ng,dg);
rlocus(GH)
rlocfind(GH)
