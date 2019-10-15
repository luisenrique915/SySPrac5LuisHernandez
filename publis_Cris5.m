%% Práctica 5: Series de Fourier en tiempo continuo

%% Integrantes
%
% Flores Lima José Ricardo
%
% Medina Bautista Sergio Cristian
%
% Plata Montejano Lissete

%% Objetivos
% * Realizar gráficas de series de Fourier exponenciales y trigonométricas en tiempo continuo
% * Manipulación de instrucciones en MATLAB
% * Calculo númerico de los coeficientes de Fourier

%% Introducción
% Cuando se quiere obtener la serie de Fourier de una función se necesitan ciertos coeficientes, dos en el caso de la serie de Fourier trigonométrica y uno en el caso de la serie de Fourier trigonométrica compacta y de la serie de Fourier exponencial compleja. En el caso particular de la serie de Fourier trigonométrica y la serie de Fourier exponencial compleja debemos de aplicar una integral para obtener dichos coeficientes, esta integral puede realizarse de manera analítica o numérica.
%
% Los métodos de integración numéricos permiten obtener una aproximación al resultado real a través de calcular áreas con evaluaciones de la función y otras características que varían según el método que se utilice. 
%
% De manera que al aplicar un método de integración numérico a los cálculos de los coeficientes para las series de Fourier se obtiene una aproximación a los coeficientes reales de la serie de Fourier. Exploraremos dos casos para ello. 
%
% * Coeficientes de Fourier a través de la regla del trapecio compuesta
%
% La regla del trapecio calcula el área de un trapecio definido por la función en un intervalo. En la regla del trapecio compuesta se extiende esta idea al subdividir el intervalo de integración en varios subintervalos y aplicar en cada uno de ellos la regla del trapecio. 
%
% De manera que la fórmula es la siguiente:
%
% $$ D_n = \frac{1}{T_0}\int_{<T_0>}f(t)e^{-jnw_0t}dt = \frac{h}{2T_0}[f(a)e^{-jnw_0(a)}+2\sum_{i=1}^{k-1}f(x_i)e^{-jnw_0(x_i)}+f(b)e^{-jnw_0(b)}]$$
%
% Donde : 
%
% $$ T_0 = b - a = $$ un periodo de la función
%
% $$ w_0 = \frac{2\pi}{T_0} $$
%
% $$ k = $$ número de subintervalos
%
% $$ h = \frac{T_0}{k} $$
%
% $$ x_i = a + ih, i = 1,2,...,k-1 $$
%
% * Coeficientes de Fourier a través de la transformada de Fourier discreta
%
% En este caso, se sustituye la integral por la expresión de la transformada de Fourier discreta, la cual utiliza muestras de una función en un periodo.
%
% $$ D_n = \frac{1}{T_0}\int_{<T_0>}f(t)e^{-jnw_0t}dt = \lim_{T \to \infty}\frac{1}{N_0T}\sum_{k=0}^{N_0-1}f(kT)e^{-jnw_0kT}T $$
%
% Donde : 
%
% $$ T_0 = $$ un periodo de la función
%
% $$ w_0 = \frac{2\pi}{T_0} $$
%
% $$ T =  $$ el tiempo entre cada muestra
%
% $$ N_0 = \frac{T_0}{T}$$
%
% Reduciendo la ecuación y tomando el valor de T muy pequeño, obtenemos el siguiente resultado:
%
% $$ D_n = \frac{1}{N_0}\sum_{k=0}^{N_0-1}f(kT)e^{-jn \Omega_0} $$
%
% Donde:  
%
% $$ \Omega_0 = w_0T = \frac{2\pi}{N_o} $$
% 
% El obtener los coeficientes de Fourier de esta manera tiene la ventaja que cada $n+N_0$ coeficientes, los coeficientes se repiten. 
% 
% Por último, se sugiere que los valores de $N_0$ sean una potencia de 2


%% Ejemplo 6.7
% Serie de Fourier de la función:
% 
% $$ \sum_{n=-\infty}^{\infty} \delta(t-3n)$$
% 
% Los coeficientes de la serie de Fourier exponencial compleja
% están dados por:
%
% $$D_n = \frac{1}{T_0} = \frac{1}{3}$$
%
% Para cualquier armónico
%
% La serie de Fourier para 4 armónicos es la siguiente: 
%
dn=@(n) n/(3*n);
sfc7(0,3,dn,1/3,4,-7,7)
%%
% Y para 15 armónicos es:
dn=@(n) n/(3*n);
sfc7(0,3,dn,1/3,15,-7,7)
%
%
%% Comparación de los coeficientes de Fourier exponenciales numéricos y analíticos
%
% Los coeficientes de la función: $$e^{-\frac{x}{2}}$$ son calculados por: 
%
% $$D_n = \frac{0.504}{1+4nj}$$
%
n = 0:15;
analitico = 0.504./(1+4*n*j);
analitico = analitico';
%%
% Se definen los coeficientes a través de la regla del trapecio compuesta
f = @(t) exp(-t/2);
trapecio = zeros(16, 1);
for in=1:16
    trapecio(in) = dntrapecio(0, pi, f, in-1);
end
%%
% Se definen los coeficientes a través de la transformsda discreta de
% Fourier (example C6.4)
discreto=C6_4(pi, 512, 15);
%% 
% Realizamos la comparación:
error_analitico_trapecio = abs( trapecio-analitico  );
error_analitico_discreto = abs( discreto-analitico  );
table(analitico, trapecio, discreto, error_analitico_trapecio, error_analitico_discreto)







