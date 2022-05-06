clc;
clear all;
close all;

n1=41;
fs=8000;
f_low=2500;
f_high=3000;
wl=(f_low/fs)*2;
wh=(f_high/fs)*2;
w=[wl wh];

b1=fir1(n1-1,w,'bandpass', hann(n1));
figure;
freqz(b1,1)

b2=fir1(n1-1,w,'bandpass', blackman(n1));
figure;
freqz(b2,1);
















figure;
subplot(2,1,1)
stem(b1)
title('coefficients of hanning window with the length of 41.')
subplot(2,1,2)
stem(b2)
title('coefficients of hanning window with the length of 41.')



