#Układ Duffinga
#a,b,A,B,C stałe

#ile kroków:
N= 5000;


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
f= @(t,x,v)[v,-a*v-b*x-A*x.^3+B*cos(C*t)];


#wektor czasu
t= linspace(0,T,N+1);

#tworzenie wektorów rozwiązań
x= zeros(N+1,1);
x(1)= x0;
v= zeros(N+1,1);
v(1)= v0;





for i=1:N
  [x,y]= rk43arg(f,t(i),t(i+1),x(i),v(i),1);
endfor;

figure
plot(t,x,'r',t,v, 'b')

figure
plot(y(:,1),y(:,2))



fa=@(t,poa,y) poa*[0,-b-3*A.*y(1).^2; 1,-a]+[0,-y(2)];    #pochodna po parametrze a:

poa= zeros(N+1,2);

y=[x,v]
    

for i=1:N
  poa(i+1,1:2)= rk43arg(fa,t(i),t(i+1),poa(i,1:2),y(i,1:2),1);
endfor;

figure
plot(t,poa(:,1),'r',t,poa(:,2), 'b')




