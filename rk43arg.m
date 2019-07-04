#4-poziomowy algorytm Rungego-Kutty dla funkcji 3 argumentowej
function x= rk43arg(f,t0,T,x0 ,y0,N)
  h= (T-t0)/N;
  x= x0;
  y=y0;
  
  for i= 1:N
      t= t0+i*h;
      k1= f(t,x,y);
      k2= f(t+h/2, x+h/2.*k1,y);
      k3= f(t+h/2, x+h/2.*k2,y);
      k4= f(t+h, x+h.*k3,y);
      x= x+h.*(k1./6 + k2./3+ k3./3 + k4./6);
      endfor;
endfunction

