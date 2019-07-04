#program do eulera
#dane:
T=4;
N=10000000;
t0=0;
x0=1;


#f-cje anonimowe to takie z definicją: @(t,x)

f=@(t,x)x;
#^funkcja anonimowa przypisana zmiennej f

g=@(t)exp(t);

tic; euler(f,x0,t0,T,N)-g(T), toc
#x'=x; x(0)=1, x(t)=e^t