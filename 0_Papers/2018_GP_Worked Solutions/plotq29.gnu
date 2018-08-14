# http://gnuplot.sourceforge.net/demo/contours.html

set term svg
set output "29.svg"
set samples 10000
#set isosamples 50
#set xrange[-10:10]
#set yrange[-5:5]
set ztics 0,2

set xrange[-2:2]

# y = t
set yrange[-1:1] 

set xyplane at 0
set view 10,80

f(x,y)=2*exp(-((1.5*x+3.6*y)**2))

splot f(x,y)
