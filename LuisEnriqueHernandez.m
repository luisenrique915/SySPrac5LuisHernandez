%% Práctica 5: Series de Fourier en tiempo continuo

%% Datos Generales
%
% Luis Enrique Hernandez Lugardo
%
% Silverio Jiménez Cesar Antonio

%% Objetivos
% * Realizar gráficas de series de Fourier exponenciales y trigonométricas en tiempo continuo
% * Manipulación de instrucciones en MATLAB
% * Calculo númerico de los coeficientes de Fourier

%% Introducción
% *Coeficientes de Furier.*
%
% Sea  
%
% <<01.png>>
% 
% una funcion periodica $$2\pi $$ integrable en el intervalo [0, $2\pi$ ].
% Los coeficientes de Fourier de $f$ son:
%
% <<02.png>>
% 
% La serie de Fourier de $f$ es la siguiente suma formal:
%%
% 
% <<03.png>>
% 
% *La serie de Fourier de una función periódica*
% s series de Fourier se suelen definir para un conjunto de funciones más general que el de funciones continuas.
% Recordemos que una función continua a trozos es una función continua salvo quizás en algunos puntos $x_i$,
% $i = 1, ..., n,$ donde los límites laterales son finitos. Una función continua es un caso particular de esta situación.
% Las series de Fourier se definen en primer lugar para funciones periódicas.
%%
% 
% <<04.png>>
% 
% *Casos particulares: Funciones pares o impares*
% Si $f$ es par, entonces todos los $b_n=0$ y la serie de Fourier asociada
% es.
%%
% 
% <<05.png>>
% 
% si $f$ es impar, entonces todos los $a_n=0$ la serie de Fourier asociada
% es 
% 
% <<06.png>>
% 
% donde $a_n$ y $b_n$ se definen del mismo modo que en el caso general.
%
% *Variantes en la expresión de las series de Fourier*
%
% En algunos campos de la ciencia, por cuestiones de interpretación, interesa escribir las series de Fourier con una
% expresión distinta a la que hemos presentado aquí. Algunas opciones son las siguientes:
%
% * Los coeficientes de Fourier tambien se puden definir en el interbalo $[0,T]$
% 
% <<07.png>>
% 
% 
% <<08.png>>
% 
% * El término general de la serie de Fourier se puede escribir como un coseno. En efecto, si consideramos el
% número complejo $z_n = a_n ? ib_n$ y denotamos $F_n$ a su módulo y $\alpha_n$ a su argumento,
% 
% <<09.png>>
% 
% utilizando propiedades de las razones trigonometricas y denotando
% $F_0=a_0/2$, se obtiene la sigiente expresion para la serie de Fourier: 
% 
% <<10.png>>
% 
% * Podemos encontrar la serie de Fourier escrita utilizando la exponencial
% compleja $$ e^{\alpha i}  = cos \alpha + sin \alpha $$ del modo siguiente:
% 
% <<11.png>>
% 
% Los coeficientes $c_n$ se conocen como *coeficientes de Fourier*
%
%% Ejemplo 6.1
%%
%
% * *Ejemplo 6.1* Con serie  y espectro trigonometrico, no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento)
%%
% SERIE DE FOURIER PARA 4 ARMONICOS 
figure(2);
ejem1();

%%
% SERIE DE FOURIER PARA 15 ARMONICOS 
figure (3);
ejem115();

%% Ejemplo 6.2

%%
%
% * *Ejemplo 6.2.* Con serie y espectro exponencial y A=3,  no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento)
%
%%
% SERIE DE FOURIER PARA 4 ARMONICOS 
%
figure(5);
Ejemplo_6_2_4();
%%
% SERIE DE FOURIER PARA 15 ARMONICOS 
%
figure(6);
Ejemplo_6_2_15();
%% Ejemplo 6.4
%%
%
% * *Ejemplo 6.4.* Con serie y espectro exponencial,  no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento)
%
%%
% SERIE DE FOURIER PARA 4 ARMONICOS  

figure(8);
Ejem44();
%%
% SERIE DE FOURIER PARA 15 ARMONICOS 

figure(9);
Ejem415();

%% Ejemplo 6.5
%%
%
% * *Ejercicio 6.5.* Con serie y espectro exponencial,  no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento)
%
%%
% SERIE DE FOURIER PARA 4 ARMONICOS 
figure(11);
Ejemplo_6_5_4();
%
%%
% SERIE DE FOURIER PARA 15 ARMONICOS  
figure(12);
Ejemplo_6_5_15();
%

%% Ejemplo 6.7
%%
%
% * *Ejemplo 6.7.* Con serie y espectro exponencial y $T_0=3$ sin incluir la
% gráfica de f, error ni energía del error,  no es
% necesario entregar el código, solo la aplicación al problema especifico,
% debe de indicar la función y los valores de sus coeficientes (sin incluir
% el procedimiento)
%
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
% SERIE DE FOURIER PARA 4 ARMONICOS
%
dn=@(n) n/(3*n);
sfc7(0,3,dn,1/3,4,-7,7)
%%
% SERIE DE FOURIER PARA 15 ARMONICOS
dn=@(n) n/(3*n);
sfc7(0,3,dn,1/3,15,-7,7)
%% Elaboración del código
% * Elabore un código similar al COMPUTER EXAMPLE C6.2 que se encuentra al 
% final de la sección 6.2 de Lathi para el Ejempo 6.2 con los datos
% indicados anteriormente (no utilice inline)
%
%
clf
x =@(t) exp(-t/2) ;
t = [0:0.01:25];
plot(t,x(mod(t,pi)))



sumterms = zeros(16, length(t));
sumterms(1,:) = 0.504;
for n = 1:size(sumterms,1)-1;
sumterms(n+1,:) = 0.504/(1+4*n*j).*exp(2*n*t*j);
end
x_N = cumsum (sumterms); 
figure(20); 
clf; 
ind = 0;

for N = [0,1:2:size(sumterms, 1)-1];
ind = ind+1; 
subplot (3,3,ind);
plot (t,x_N(N+1,:), 'k', t ,x(mod(t,pi))+0j,'r--'); 
axis ([0 20 -0.2 1.2]);
xlabel ('t'); 
ylabel (['x_{',num2str(N),'} (t)']);

end
%% Elaboración del código para el trapecio compuesto
%
% * Elabore un código que implemente el algoritmo de trapecio compuesto
% para $n=15$, Utilice este código para aproximar $D_0,...,D_4$ del ejemplo
% de la práctica. Ahora implemente el código COMPUTER EXAMPLE C6.4 que se
% encuentra al final de la sección 6.6 de Lathi, y calcule nuevamente el
% los coeficientes $D_0,...,D_4$ del ejemplo propuesto. Muestre una tabla
% que contenga los coeficientes mencionados calculados con los dos
% algoritmos y de forma exacta, ¿Qué algortmo aproxima mejor a los
% coeficientes?, para esto compare los coefientes con el valor absoluto de
% la resta. 
%
%
%% 
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
lathi=C6_4(pi, 512, 15);
%% 
% Realizamos la comparación:
error_analitico_trapecio = abs( trapecio-analitico  );
error_analitico_lathi = abs( lathi-analitico  );
table(analitico, trapecio, lathi, error_analitico_trapecio, error_analitico_lathi)

%% Conclusiones
% Por lo tanto como se puede ver en la tabla el algoritmo del trapecio es
% mas exacto que el del Lathi porque toma valores muy pequeños. Al igual se
% puede notar en el error analítico lathi. 
%% Referencias
% <https://es.mathworks.com/products/matlab.html Matlab>
%
% B. P. Lathi, Linear Systems and Signals, Second Edition, Oxford
% 
% University Press, Inc.,  2005, segunda edicion, pp. 689.

