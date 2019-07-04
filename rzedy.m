#e(h)=|x(T)-xN|≤Ch^p
#e(h)=C*h^p
#e(a*h)=C*(a*h)^p
#e(h)/e(a*h)=a^p
#log_a(-^-)=p
T=4;
N=20;
t0=0;
x0=0;


f=@(t,x)x;
g=@(t)t;

#euler(f,x0,t0,T,N)-g(T)

for i=4:12
  err_e(i)=(abs(euler(f,x0,t0,T,N)-g(T)));
  N=2^i;
endfor
log2(err_e(4:11)./err_e(5:12))