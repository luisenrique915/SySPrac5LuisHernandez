function [dn] = dntrapecio(t0, tf, f, n)
    T = tf-t0;
    w0 = 2*pi/T;
    h = 0.001;
    inter = t0+h/4:h:tf-h;
    dn = h*(f(t0).*exp(-j*w0*n.*(t0)) + sum(2*f(inter).*exp(-j*w0*n.*(inter))) + f(tf).*exp(-j*w0*n.*(tf)) )/(2*T);
end
