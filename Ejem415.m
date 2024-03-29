syms dn2 a2 b2 t02 tf2 armo2 p2 d02;
d02=1/2;
dn2=@(n)(1/(n*pi))*sin((n*pi)/2);
t02=-pi/2;
tf2=3*pi/2;
f2=@(t) 1.*(t>=(-pi/2) & t<(pi/2))+0.*(t>=(pi/2) & t<=(3*pi/2));
%f=@(t) 0.*(t>=-pi & t<=-pi/2) + 1.*(t>=(-pi/2) & t<(pi/2))+0.*(t>=(pi/2) & t<=(pi));
armo2=15;
a2=-8;
b2=8;
sfc(t02,tf2,dn2,d02,f2,armo2,a2,b2);