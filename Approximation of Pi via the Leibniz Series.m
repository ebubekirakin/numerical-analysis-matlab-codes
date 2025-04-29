clear all; close all; clc
x=1;
toplam=0
pi=4*atan(1);

for n=1:100
   
    isaret=(-1)^(n+1);
    pay=x^(2*n-1);
    payda=2*n-1;
    sontop=toplam+4*isaret*pay/payda;
    truehata=abs(pi-sontop)/abs(pi);
    yakhata=abs(sontop-toplam)/abs(sontop);
    plot(n,yakhata,'--r*',n,truehata,'--b+');
    hold on;
    xlabel('n terim sayısı');
    ylabel('hata');
   toplam=sontop;
   
end
