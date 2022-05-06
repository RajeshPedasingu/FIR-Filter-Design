clc;
clear all;
close all;

fc=1000;
fs=8000;
Wn=(fc/fs)*2;
n1=21 ;
n2=31;
n3=41;

b1=fir1(n1,Wn,'low', hamming(n1+1))
figure;
freqz(b1,1);

b2=fir1(n2,Wn,'low', hamming(n2+1))
figure;
freqz(b2,1);

b3=fir1(n3,Wn,'low', hamming(n3+1))
figure;
freqz(b3,1);






% figure;
% subplot(3,1,1)
% stem(b1)
% title('coefficients of hamming window of length 21')
% subplot(3,1,2)
% stem(b2)
% title('coefficients of hamming window of length 31')
% subplot(3,1,3)
% stem(b3)
% title('coefficients of hamming window of length 41')


