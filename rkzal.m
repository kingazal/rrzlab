#rk do tabelki butchera z zadania
function x= rk(f, x0, t0, T, N, a, b, c)
  h= (T-t0)/N;
  x= x0;
  d=1-a-b-c;
  for k=1:N
  
    K1=f(t,x);
    K2=f(t+1/2*h, x+h*1/2*K1)
    K3=f(t+1/2*h, x+h*1/2*K2)
    K4=f(t+h, x+h*K3);
    
    t=t0+k*h;
    x=x+h*(a*K1+b*K2+c*K3+d*K4)
  endfor
endfunction;
