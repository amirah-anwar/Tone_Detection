function [y,n]=heartone(x1,x2)
n=0:1000;
Fs=3500;
x=sin((2*pi*x1*n)./Fs)+sin((2*pi*x2*n)./Fs);
p = audioplayer(x,Fs);
play(p)
pause(.5)
y=x;