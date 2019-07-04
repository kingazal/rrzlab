

%duffing oscillator
[t,z]=ode45('duffing',[0,100],[3,4]);
hold off
figure
plot(t,z(:,1))
hold on
[t,z]=ode45('duffing',[0,100],[3.01,4.01]);
plot(t,z(:,1),'r')
hold off
figure
[t,z]=ode45('duffing',[0,100],[3,4]);
plot(z(:,1),z(:,2))
hold on
[t,z]=ode45('duffing',[0,100],[3.01,4.01]);
plot(z(:,1),z(:,2),'r') 