set term svg
set output "49.svg"

#set samples 100

f(x) =  2/x
g(x) =  6/x

plot [0:2] [0:20] f(x), g(x)

