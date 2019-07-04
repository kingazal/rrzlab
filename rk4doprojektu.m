#4-poziomowy algorytm Rungego-Kutty, zwraca obliczoną numerycznie funkcję
function x= rk4(f,t0,T,x0 ,N)
  h= (T-t0)/N;
  x= x0;
  
  for i= 1:N
      t= t0+k*h;
      k1= f(t,x)
      k2= f(t+h/2, x+h/2*k1);
      k3= f(t+h/2, x+h/2*k2);
      k4= f(t+h, x+h*k3);
      x= x+h*(k1/6 + k2/3+ k3/3 + k4/6);
      endfor;
  endfunction;
    