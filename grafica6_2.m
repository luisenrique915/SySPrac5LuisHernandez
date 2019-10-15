%FIGURA 1
function grafica6_2()
p=@(t) (t<=1/2 & -1/2<=t).*(6*t)+(1/2<t & t<=3/2).*(6-6*t);
t = (-0.5:0.01:3/2);
s=p(t);
plot (t,s);
grid on; 
axis([-4 4 -4 4]);
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box='off';
end
