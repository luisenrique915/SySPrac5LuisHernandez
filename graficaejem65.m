function graficaejem65()
p=@(t) exp(-t/2);
t = (-0.0001:0.01:pi);
s=p(t);
plot (t,s);
grid on; 
axis([-1 (3/2)*pi -1 1.5]);
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box='off';
end