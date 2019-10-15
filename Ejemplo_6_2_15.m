%%function Ejemplo_6_2_15()
syms dn3 a3 b3 t03 tf3 armo3 p3 d03;
d03 = 0;
t03=-1/2;
tf3=3/2;
armo3=15;
a3=-5;
b3=6;
p3=@(t3) (t3<=1/2 & -1/2<=t3).*(6*t3)+(1/2<t3 & t3<=3/2).*(6-6*t3); 
dn3= @(n3) (-12/(pi^2*n3^2)).*sin(n3*pi/2)*sqrt(-1);
sfc(t03,tf3,dn3,d03,p3,armo3,a3,b3);
%%end