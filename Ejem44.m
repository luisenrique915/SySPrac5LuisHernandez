syms dn a b t0 tf armo p d0;
d0=1/2;
dn=@(n)(1/(n*pi))*sin((n*pi)/2);
t0=-pi/2;
tf=3*pi/2;
f=@(t) 1.*(t>=(-pi/2) & t<(pi/2))+0.*(t>=(pi/2) & t<=(3*pi/2));
%f=@(t) 0.*(t>=-pi & t<=-pi/2) + 1.*(t>=(-pi/2) & t<(pi/2))+0.*(t>=(pi/2) & t<=(pi));
armo=4;
a=-6;
b=6;
sfc(t0,tf,dn,d0,f,armo,a,b);