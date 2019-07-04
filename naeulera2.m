#program do eulera
#dane:
T=4;
N=20;
t0=0;
x0=0;


#f-cje anonimowe to takie z definicją: @(t,x)

f=@(t,x)x;
#^funkcja anonimowa przypisana zmiennej f

g=@(t)t;

euler(f,x0,t0,T,N)-g(T)
#x'=x; x(0)=1, x(t)=e^t

#tu chyba coś jest źle