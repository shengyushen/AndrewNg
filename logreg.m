#!/usr/bin/octave --persist
x=[-1:0.01:1];
y1=-log(x);
y0=-log(1-x);
plot(x,y0,'r',x,y1,'b');

