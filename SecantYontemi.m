x1=1;
x0=0;
hata=0.001;
adim=0;

while abs(x1-x0)/x1>hata
  
  fx0=exp(-x0)-x0;
  fx1=exp(-x1)-x1;
  x2=x1- (fx1*(x1-x0))/(fx1-fx0)
  x0=x1;
  x1=x2;
  adim=adim+1;
   fprintf('%d\t %f\n',adim,x2);
  
  
  
endwhile
