##Kinga Zalewska, nr indeksu: 383543
#Układ Duffinga
#a,b,A,B,C stałe

#ile kroków:
N= 3000;

#4-poziomowy algorytm Rungego-Kutty, zwraca obliczoną numerycznie funkcję
function x= rk4(f,t0,T,x0 ,N)
  h= (T-t0)/N;
  x= x0;
  
  for i= 1:N
      t= t0+i*h;
      k1= f(t,x);
      k2= f(t+h/2, x+h/2.*k1);
      k3= f(t+h/2, x+h/2.*k2);
      k4= f(t+h, x+h.*k3);
      x= x+h.*(k1./6 + k2./3+ k3./3 + k4./6);
      endfor;
endfunction;


#4-poziomowy algorytm Rungego-Kutty dla funkcji 3 argumentowej
function x= rk43arg(f,t0,T,x0 ,y0,N)
  h= (T-t0)/N;
  x= x0;
  y=y0;
  
  for i= 1:N
      t= t0+i*h;
      k1= f(t,x,y);
      k2= f(t+h/2, x+h/2.*k1,y);
      k3= f(t+h/2, x+h/2.*k2,y);
      k4= f(t+h, x+h.*k3,y);
      x= x+h.*(k1./6 + k2./3+ k3./3 + k4./6);
      endfor;
endfunction


#zestaw danych z zadania
T= 20;
a= 1;
b= 0.1;
A= 1;
B= 0.1;
C= 1;
x0= 1;
v0= 0;

#Przyjmujemy definicję funkcji f:
f= @(t,y)[y(2),-a*y(2)-b*y(1)-A*y(1).^3+B*cos(C*t)];


#wektor czasu
t= linspace(0,T,N+1);

#tworzenie wektorów rozwiązań
x= zeros(N+1,1);
x(1)= x0;
v= zeros(N+1,1);
v(1)= v0;
y= [x,v];




for i=1:N
  y(i+1,1:2)= rk4(f,t(i),t(i+1),y(i,1:2),1);
endfor;

figure
plot(t,y(:,1),'r',t,y(:,2), 'b')
legend('x(t)','v(t)')

figure
plot(y(:,1),y(:,2))
legend('wykres przestrzeni fazowej')


fa=@(t,poa,y) poa*[0,-b-3*A.*y(1).^2; 1,-a]+[0,-y(2)];    #pochodna pochodnej po parametrze a:

poa= zeros(N+1,2); #pochodna po a

for i=1:N
  poa(i+1,1:2)= rk43arg(fa,t(i),t(i+1),poa(i,1:2),y(i,1:2),1);
endfor;

figure
plot(t,poa(:,1),'g',t,poa(:,2), 'k')
legend('pochodna x po a=1','pochodna v po a=1')





