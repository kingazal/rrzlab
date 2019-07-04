N=20;
T=6*pi;
f=@(t,x)(x/t+t*cos(t));
x0=pi;

t=linspace(pi,T,N+1);
x=zeros(N+1,1);
x2=zeros(N+1,1);
x2(1)=pi;
x(1)=pi;
for i=1:N
  x(i+1)=euler(f,x(i),t(i),t(i+1),1);
  x2(i+1)=rk2(f,x2(i),t(i),t(i+1),1,1);
endfor


ta=linspace(pi,T,200);
xa=ta.*(1+sin(ta));


#czarny to k
figure #daje kolejne okna na obrazki
plot(t,x,'bo',t,x2,'go',ta,xa,'r')
legend('euler','rk2','analityczne')


#rk2 powinien być coraz lepszy dla kolejnych kroków, coś do poprawki

