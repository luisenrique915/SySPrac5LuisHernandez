
syms dn2 a2 b2 t02 tf2 armo2 p2 d02;
d02=0;
t02=0;
tf2=pi;
armo2=15;
a2=-(5/2)*pi;
b2=3*pi;
p2=@(t2) exp(-t2/2);
dn2= @(n2)0.504./(1+j*4*n2); 
sfc(t02,tf2,dn2,d02,p2,armo2,a2,b2);
