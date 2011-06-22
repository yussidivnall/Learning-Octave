outfile = "3dplot.dat";
    samples = 100;
    a_vec = linspace(0.5, 1, samples);
    z_vec = linspace(1, 5, samples);
  
    function r = f(x)
      global z;
      r = 2*sin(x).*sqrt((z + sin(x)));
    endfunction
  
    function r = F(a)
      r = quad("f", -pi/2, a);
    endfunction
  
    points = [];
    global z;
    for z = z_vec
      for a = a_vec
        points = [points z a sin(z)*F(a)/(z + sin(a))**(3/2)];
      endfor
    endfor
  
    fd = fopen(outfile, "wt");
    fprintf (fd, "%14.6f %14.6f %14.6f\n", points);
    fclose(fd);
    disp("Done!");
%http://www.reimeika.ca/marco/prettyplots/
