%% Ejemplo 6.1
%%
% GRAFICA ORIGINAL 
figure(1);
f=@(t) exp(-t/2) .*((t>=0)&(t<pi));
t = (-5:0.01:5);
s=f(t);
plot (t,s);
grid on; 
axis([-1 5 -1 2]);
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box='off';

% $$ f(t)= e^{-t/2}$$

%%
% SERIE DE FOURIER PARA 4 ARMONICOS 
figure(2);
ejem1();



%%
% SERIE DE FOURIER PARA 15 ARMONICOS 
figure (3);
ejem115();


%% Ejemplo 6.4
%%
% GRAFICA ORIGINAL 
figure(4);
f=@(t) 1.*(t>=(-pi/2) & t<(pi/2))+0.*(t>=(pi/2) & t<=(3*pi/2));
t = (-5:0.01:4);
s=f(t);
plot (t,s);
grid on; 
axis([-3 3 -1 2]);
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box='off';

% $$ f(t)= 1   -pi/2<t<pi/2$$

%%
% SERIE DE FOURIER PARA 4 ARMONICOS  

figure(5)
Ejem44();
%%
% SERIE DE FOURIER PARA 15 ARMONICOS 

figure(6)
Ejem415();

