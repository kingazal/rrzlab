#schemat Eulera
#x'=f(t,x); x(t_0)=x_0; t w [t_0,T]
#x_(n+1)=x_n+hf(t_n,xn); x_0-dane
#t_n=t_0+n*((T-t_0)/N) dla N kawałków;
#n=0,1,...N-1; t_n=t_(n-1)+h; lepszy ten poprzedni sposób, bo tu się kumuluje błąd, a tam się może 'kasować'
#funkcja implementująca schemat Eulera 


function x=euler(f,x0,t0,T,N)
  h=(T-t0)/N;
  x=x0;
  
  for k=1:N # musi być tylko dobra liczba iteracji
    t=t0+k*h;
    x=x+h*f(t,x);
  endfor
endfunction

