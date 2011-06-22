#! /bin/octave -qf
     printf ("%s", program_name ());
     arg_list = argv ();
     for i = 1:nargin
       printf (" %s", arg_list{i});
     endfor
     printf ("\n");
#Source: http://www.gnu.org/software/octave/doc/interpreter/Executable-Octave-Programs.html#Executable-Octave-Programs
