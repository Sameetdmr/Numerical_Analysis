a=0.5;
b=1.5;
hata=0.001;
baslangic=0;
while abs((a-b)/a)>hata
  
  fa=a^3-6*a^2+(13.5*a)-9;
  fb=b^3-6*b^2+(13.5*b)-9;
  c=(a+b)/2;
  fc=c^3-6*c^2+(13.5*c)-9;
  
  if fa*fc>0
    a=c;
  else
    b=c;
  endif
  baslangic=baslangic+1;
  
  fprintf('%d\t%f\t%f\t%f\t%f\n',baslangic,a,b,c,abs((a-b)/a))

endwhile
