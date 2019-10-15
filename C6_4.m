function [Dn] = C6_4 (T_0, N_0, n)

    T = T_0/N_0;
    t = (0:T:T_0)'; 
    x = exp(-t/2); 
    x(1) = (exp(-pi/2) + 1)/2;
    D_n = fft (x)/N_0;
    Dn = D_n(1:n+1, 1);
end