function []=calfft(x1)
n=0:1000;
Fs=3500;
N=length(n);
f=((-N/2:N/2-1)/N).*Fs;
y2=fftshift(fft(x1));
stem(f,abs(y2))
axis([-2000 2000 0 500])
