
clc;
clear all;
close all;

fs=10000;
fc=3500;% fc=(3000+4000)/2
wn=(fc/fs)*2;
n1=33;% from the 


b1=fir1(n1,wn,'low', hamming(n1+1));
figure;
freqz(b1,1);





