
syms dn a b t0 tf armo p d0;
d0 = 0;
t0=-1/2;
tf=3/2;
armo=4;
a=-5;
b=5;
p=@(t) (t<=1/2 & -1/2<=t).*(6*t)+(1/2<t & t<=3/2).*(6-6*t); 
dn= @(n) (-12/(pi^2*n^2)).*sin(n*pi/2)*sqrt(-1);
sfc(t0,tf,dn,d0,p,armo,a,b);