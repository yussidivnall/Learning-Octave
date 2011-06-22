#!/usr/bin/octave -q

function square_wave(n)
	N = n;
	x = [0:1000]/100;
	f = ones(1,1001)*1/2;
	for i = 1:2:N
	a = 2/pi/i;
	f = f+ a*sin(2*pi*i*x);
	end
	axis([-10,10,-10,10],"square");
	plot(x,f);
endfunction 


for i=[1:200]
square_wave(i);
sleep (0.01)
end
sleep(10)
%http://mesa.ac.nz/wp-content/uploads/2011/04/matlab_Fourier.pdf 
%(22-Jun-2011)
