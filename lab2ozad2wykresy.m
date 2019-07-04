N=50;
T=20;
f=@(t,x)2*x;
x0=1;

t=linspace(0,T,N+1);
x=zeros(N+1,1);
x2=zeros(N+1,1);
x2(1)=1;
x(1)=1;
for i=1:N
  x(i+1)=euler(f,x(i),t(i),t(i+1),1);
  x2(i+1)=rk4(f,t(i),t(i+1),x2(i),1);
endfor


ta=linspace(0,T,2000);
xa=exp(2*ta);


#czarny to k
figure #daje kolejne okna na obrazki
plot(t,x2,'go',ta,xa,'r')
legend('euler','rk2','analityczne')

#^t,x2,'go',
##przerobiony do spr rk4