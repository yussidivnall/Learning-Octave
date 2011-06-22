#!/usr/bin/octave -q
%set(0, 'defaultfigurevisible', 'off');

x=linspace(-3*pi,3*pi,50)
y=linspace(-3*pi,3*pi,50)
[xx,yy]=meshgrid(x,y);
i=0
idx=0
while ( i<(2*pi) )
%for i=[0:2*pi:i+=pi/100]
	%zz=[-1000:1000]
	zz=( 1+sin(xx.+(i)))*yy + (cos(yy.+(i)))*xx
    	%surf(xx,yy,zz);
    	%axis([-3*pi 3*pi -3*pi 3*pi -1000 1000]);
    	axis([-3*pi ,3*pi, -3*pi, 3*pi, -1000, 1000]);
	zlim [-1000:1000]
	%axis ("tight")
	meshc(xx,yy,zz)
	%shading interp;
	
	meshc(xx,yy,zz)
	sleep (0.001)
    	%filename=sprintf('output/%05d.png',idx);
    	%print(filename);
	i=i+(pi/10);
	idx++;
endwhile
%end
