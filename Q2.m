clc;
clear all;
close all;

n1=31;
fc=2500;
fs=8000;
wn=(fc/fs)*2;

b1=fir1(n1-1,wn,'high', hann(n1));
figure;
freqz(b1,1)

b2=fir1(n1-1,wn,'high', hamming(n1));
figure;
freqz(b2,1);


b3=fir1(n1-1,wn,'high', blackman(n1));
figure;
freqz(b3,1);








figure;
subplot(3,1,1)
stem(b1)
title('coefficients of hanning window with the length of 31')
subplot(3,1,2)
stem(b2)
title('coefficients of hamming window with the length of 31')
subplot(3,1,3)
stem(b3)
title('coefficients of blackman window with the length of 31')


