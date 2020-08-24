f=@(x) x^4-2*x-5; % Fonksiyon
ft=@(x) 4*x^3-2; % Türevi alýnmýþ hali
x0=2;
hata=0.00001;
baslangic=0;
while abs(f(x0))>hata
  
  x=x0-f(x0)/ft(x0);
  x0=x;
  baslangic=baslangic+1;
  fprintf('%d\t%f\t%f\n',baslangic,x0,f(x0));
  
endwhile
