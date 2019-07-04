#program do eulera
#dane:
T=4;
N=20;
t0=0;
x0=1;

function x=euler(f,x0,t0,T,N)
  h=(T-t0)/N;
  x=x0;
  
  for k=1:N # musi być tylko dobra liczba iteracji
    t=t0+k*h;
    x=x+h*f(t,x);
  endfor
endfunction

#f-cje anonimowe to takie z definicją: @(t,x)

f=@(t,x)x;
#^funkcja anonimowa przypisana zmiennej f

g=@(t)exp(t);

euler(f,x0,t0,T,N)-g(T)
#x'=x; x(0)=1, x(t)=e^t