#Przyjmujemy definicję funkcji f:
g= @(t,y)[y(2),-a*y(2)-b*y(1)-0*y(1).^3+0*cos(C*t)];


#wektor czasu
t= linspace(0,T,N+1);

#tworzenie wektorów rozwiązań
x= zeros(N+1,1);
x(1)= x0;
v= zeros(N+1,1);
v(1)= v0;
y= [x,v];




#for i=1:N
#  y(i+1,1:2)= rk4(g,t(i),t(i+1),y(i,1:2),1);
#endfor;
#figure
#plot(t,y(:,1),'g',t,y(:,2), 'b')