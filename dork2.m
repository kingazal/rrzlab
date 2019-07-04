#do rk2

T=4;
N=20;
t0=0;
x0=1;
q=1;

f=@(t,x)x;


g=@(t)exp(t);

rk2(f,x0,t0,T,N,q)-g(T)
