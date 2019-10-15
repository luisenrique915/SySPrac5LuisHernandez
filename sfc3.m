function sfc3(t0,tf,cn,d0,f,armo,a,b,tn)
% t0 el valor inicial para calcular la serie
% tf el valor final donde calcular la serie
% dn funci�n de la f�rmula de los dn
% f funci�n original
% armo n�mero de armonicos a utilizar en la gr�fica
% a, b intevalo para realizar la grafica de la serie
% cn funci�n de la f�rmula de los Cn
% tn �ngulo

w0=2*pi/(tf-t0);
for i=0:armo
    if i==0
        disp("C"+i+" = "+d0);
    else
        disp("C"+i+" = "+cn(i));
    end
end
sf=d0;
t=a:0.0001:b;

for n=1:armo
    sf=sf+(cn(n)*cos(tn(n)))*cos(w0*n*t)+(-cn(n)*sin(tn(n)))*sin(w0*n*t);
end
figure (1)
hFig = figure(1);
set(hFig, 'Position', [0 0 900 900])
subplot(3,2,1)
plot(t,sf,'LineWidth',2)
grid on
legend('Serie de Fourier','Location','Best')
xlabel('t','FontWeight','bold','FontSize',16)

sf=d0;
t1=a:0.0001:b;

for n=1:armo
    sf=sf+(cn(n)*cos(tn(n)))*cos(w0*n*t1)+(-cn(n)*sin(tn(n)))*sin(w0*n*t1);
end

subplot(3,2,2)
plot(t1,f(t1),'r','LineWidth',2)
grid on
hold on
plot(t1,sf,'LineWidth',2)
legend('Funci�n original','Serie de Fourier ','Location','Best')
xlabel('t','FontWeight','bold','FontSize',16)
nn=0:armo;
axis auto

subplot(3,2,4)
e=f(t1)-sf;
plot(t1,e,'LineWidth',2)
title('Error','FontWeight','bold','FontSize',16)
xlabel('t','FontWeight','bold','FontSize',16)
axis auto
grid on

subplot(3,2,6)
e=f(t1)-sf;
area(t1,e.^2)
legend('Energia del error','Location','Best')
xlabel('t','FontWeight','bold','FontSize',16)
axis auto
grid on

absdn=zeros(1,length(nn));
cont=1;
for i =0:armo
    if i==0
        absdn(cont)=d0;
    else
    absdn(cont)=cn(i);
    end
    cont=cont+1;
end

subplot(3,2,3)
stem(w0*nn,absdn,'LineWidth',2)
title('Espectro de magnitud Cn ','FontWeight','bold','FontSize',16)
xlabel('\omega','FontWeight','bold','FontSize',16)
grid on

subplot(3,2,5) % % 
stem(w0*nn,tn(w0*nn),'LineWidth',2) % % 
title('Espectro de fase, theta_n ','FontWeight','bold','FontSize',16) % % 
xlabel('\omega','FontWeight','bold','FontSize',16)
grid on



end