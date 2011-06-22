#!/usr/bin/octave
x=linspace(-2*pi,2*pi,100);
y=linspace(-2,2,100);
z=linspace(-0.1,0.1,100);
n=linspace(-0.1,0.1,100);
%z=linspace(-2*pi,2*pi,100);
for i=[0:1000]
	y=sin(x+i/20)
	%z=tangent to y at x=0
	%y-y0=m(x-x0)
        %y=m(x-x0)+y(0)
	z=cos(i/20)*x-cos(i/20)*0+sin(0+i/20);
	n=(-1*x) / (cos(i/20))+sin(0+i/20);
%	replot(x,z);
	axis([-pi,pi,-1,1]);
	plot(x,z,"12",x,y,x,n);
	sleep(0.01);
end
