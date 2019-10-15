syms cn a b t0 tf armo p d0;
% cn función de la fórmula de los Cn
d0=0.504;
cn=@(n) 0.504.*(2/sqrt(1+16.^n)) ;
t0=0;
tf=pi;
f=@(t) exp(-t/2).*((t>=0)&(t<pi));
armo=15;
a=-1;
b=5;
tn=@(n) - atan(4.*n);
sfc3(t0,tf,cn,d0,f,armo,a,b,tn);