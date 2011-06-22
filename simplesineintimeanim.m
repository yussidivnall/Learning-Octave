#!/usr/bin/octave
x=linspace(-2*pi,2*pi,100);
for i=[0:1000]
	y=sin(x+i/10);
	plot(x,y);
	sleep(0.01);
end
