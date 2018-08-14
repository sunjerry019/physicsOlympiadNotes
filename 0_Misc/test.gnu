set term svg

set output "test.svg"

#plot 'data.dat' using 1:2 title "xball" with lines
# using 1:6 title "top of spring" with lines, 

plot 'data.dat' using 1:($2-$3) title "xball minus vball" with lines, '' using 1:2 title "xball" with lines, '' using 1:3 title "vball" with lines, '' using 1:5 title 'ext' with lines, '' using 1:6 title 'Top of spring (ext + xball)' with lines