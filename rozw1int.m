syms x y; % definicja zmiennych symbolicznych ‘x’ i ‘y’
y = dsolve('D2x + 3*Dx + 2*x=0' , 'x(0)=0' , 'Dx(0)=2'); % równanie wraz z
 % warunkami początkowymi
pretty(y); % wypisanie rozwiązania
t=0:0.01:9.99; % definicja wektora czasu
w=subs(y); % wartość liczbowa ‘y’ wyliczona poprzez podstawienie
 % zdefiniowanego wcześniej wektora ‘t’
plot(t,w,'r-'); % narysowanie wykresu
xlabel('czas[s]');
ylabel('amplituda sygnalu');
title('Wykres rozwiazania rownania rozniczkowego');
grid; 