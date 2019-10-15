%% Ejemplo 6.2

%%
% GRÁFICA ORIGINAL 
%
figure(1)
grafica6_2();
%%    
% $$f(t)
% = \left\{ \begin{array}{lcc}
%            0 & si & t<-\frac{1}{2} \\
%             \\6t & si & -\frac{1}{2}<t<\frac{1}{2} \\
%             \\6(1-t) & si & \frac{1}{2}<t<\frac{3}{2} \\
%             \\0 & si & t>\frac{3}{2}
%             \end{array}
%   \right.$
%%
% Por lo que para su serie de Fourier tenemos que 
% $$d_n=\frac{-12}{\pi^{2}n^{2}}\sin(n\frac{\pi}{2})j$$
%%
% SERIE DE FOURIER PARA 4 ARMONICOS 
%
figure(2)
Ejemplo_6_2_4();
%%
% SERIE DE FOURIER PARA 15 ARMONICOS 
%
figure(3)
Ejemplo_6_2_15();
%



%% Ejemplo 6.4

%% Ejemplo 6.5
%%
% GRAFICA ORIGINAL 
figure(4)
graficaejem65();
%%
% $$ f(t)= e^{-t}$$
%%
% SERIE DE FOURIER PARA 4 ARMONICOS 
figure(6);
Ejemplo_6_5_4();
%
%%
% SERIE DE FOURIER PARA 15 ARMONICOS  
figure(7);
Ejemplo_6_5_15();
%

