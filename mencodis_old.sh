#!/bin/bash
mencoder mf://output/*.png -mf w=800:h=600:fps=60:type=png -ovc lavc -lavcopts vcodec=mpeg4:mbd=2:trell -oac copy -o output.avi

#Stolen from http://www.krizka.net/2009/11/06/creating-animations-with-octave/ 15/Jul/2011
