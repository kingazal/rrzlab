#schemat R-K 2 poziomowy a|a  |
#tabelka Butchera         |1-q|q  a=1/(2q)
#K1=f(tn,xn);
#K2=f(tn+a*h,xn+a*h*K1);
#x_(n+1)=xn+h((1-q)K1+qK2))


function x=rk2(f,x0,t0,T,N,q)
  h=(T-t0)/N;
  x=x0;
  a=1/(2*q);
  for k=1:N
    t=t0+k*h;
    k1=f(t,x)
    x=x+h*[(1-q)*f(t,x)+q*f(t+a*h,x+a*h*f(t,x))];
  endfor
endfunction;


