clc;
clear all;
close all;


fs=8000;
fl=1250;
fh=2250;
wl=(fl/fs)*2;
wh=(fh/fs)*2;
w=[wl wh];
delta_f1=1/16;
delta_f2=1/16;
n1=53;

b1=fir1(n1-1,w,'bandpass', hamming(n1));
figure;
freqz(b1,1)