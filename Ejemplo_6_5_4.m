
syms dn1 a1 b1 t10 t1f armo1 p1 d01;
d01=0;
t10=0;
t1f=pi;
armo1=4;
a1=-(5/2)*pi;
b1=3*pi;
p1=@(t1) exp(-t1/2);
dn1= @(n1)0.504./(1+j*4*n1); 
sfc(t10,t1f,dn1,d01,p1,armo1,a1,b1);
