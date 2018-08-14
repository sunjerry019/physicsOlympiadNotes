#!/bin/gnuplot 

# plotting rho^2 vs driven frequency omega

set term postscript eps enhanced 
set output "resonance.eps"
set sample 5000

set xrange [3:7]
set yrange [0:0.18]

m = 1
omega_0 = 5
set arrow from 5, graph 0 to 5, graph 1 nohead dt 3

# Divide gamma by 10 since gnuplot can't iterate over floats
f(x,gamma) = 1/((m**2)*((omega_0**2 - x**2)**2 + ((gamma)**2)*(x**2)))

set xlabel "{/Symbol w}"
set ylabel "{/Symbol r}^2"

# plot for [gamma=1:5] f(x,gamma) with lines title sprintf("{/Symbol g}=%.2f", gamma)

plot \
	f(x,0) title sprintf("{/Symbol g}=%.2f", 0), \
	f(x,0.5) title sprintf("{/Symbol g}=%.2f", 0.5), \
	f(x,0.6) title sprintf("{/Symbol g}=%.2f", 0.6), \
	f(x,0.7) title sprintf("{/Symbol g}=%.2f", 0.7), \
	f(x,0.8) title sprintf("{/Symbol g}=%.2f", 0.8), \
	f(x,1.0) title sprintf("{/Symbol g}=%.2f", 1.0), \
	f(x,1.2) title sprintf("{/Symbol g}=%.2f", 1.2), \
	f(x,1.5) title sprintf("{/Symbol g}=%.2f", 1.5) with lines 