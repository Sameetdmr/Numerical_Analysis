a=1.2;
b=2;
hata=0.0001; %1E-4
adim=0;
while abs((a-b)/a)>hata
  
  fa=a^3-5*sin(2*a);
  fb=b^3-5*sin(2*b);
  
  c= ((b*fa)-(a*fb))/(fa-fb);
  
  fc=c^3-5*sin(2*c);
  
  if fa*fc>0
    a=c;
  endif
  if fa*fc<0
    b=c;
  endif
  adim=adim+1;
  
  fprintf('%d\t%d\t%d\t%f\t%f\n',adim,a,b,c,((a-b)/a));
  
  
endwhile
