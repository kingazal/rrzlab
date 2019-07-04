#e(h)=|x(T)-xN|≤Ch^p
#e(h)=C*h^p
#e(a*h)=C*(a*h)^p
#e(h)/e(a*h)=a^p
#log_a(-^-)=p
#dla x=e^(2t)
T=2;
t0=0;
x0=1;


f=@(t,x)2*x;
g=@(t)exp(2*t);

#euler(f,x0,t0,T,N)-g(T)
for k=1:10
  N=T*2^k*10;
  err_e(k)=(abs(euler(f,x0,t0,T,N)-g(T)));
endfor
log2(err_e(1:9)./err_e(2:10))

#for i=1:10
#  N=T*2^i*10;
#  err_rk2(i)=(abs(rk2(f,x0,t0,T,N,1/2)-g(T)));
#endfor
#log2(err_rk2(1:9)./err_rk2(2:10))


 #dla eul i rk2, coś nie działa w rk2
 


