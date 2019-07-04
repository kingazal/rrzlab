#Układ Duffinga
#a,b,A,B,C stałe

#ile kroków:
N= 10;


#zestaw danych z zadania
T= 20;
b= 0.1;
A= 1;
B= 0.1;
C= 1;
x0= 1;
v0= 0;

#Przyjmujemy definicję funkcji f:
f= @(t,y)[y(2),-v(3).*y(2)-b*y(1)-A*y(1).^3+B*cos(C*t)];


#wektor czasu
t= linspace(0,T,N+1);

#tworzenie wektorów rozwiązań
x= zeros(N+1,1);
x(1)= x0;
v= zeros(N+1,1);
v(1)= v0;
a= zeros(N+1,1);
a(1)=1;
y= [x,v,a];




for i=1:N
  y(i+1,1:3)= rk4(f,t(i),t(i+1),y(i,1:3),1);
endfor;

figure
plot(t,y(:,1),'g',t,y(:,2), 'b')

#figure
#plot(y(:,1),y(:,2))

#pochodna po parametrze a:



#ta=linspace(0,T,2000);
#xa=exp(2*ta);


#czarny to k
#figure #daje kolejne okna na obrazki
#plot(t,x2,'go',ta,xa,'r')
#legend('euler','rk2','analityczne')

