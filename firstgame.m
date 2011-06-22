#!/usr/bin/octave
%x=linspace(-2*pi,2*pi,100);
[x,y]=meshgrid([-2*pi:2*pi:100],[-2*pi:2*pi:100]);
z=x-x
for i=[0:1000]
	z=sin(y)*sin(x)
	    surf(x,y,z);
    axis([0 1 0 1 -4 4]);
    shading interp;

	plot(x,y,z);
	sleep(0.01);
end
