## NOTE: readability: leave some blank linkes between the code to make it more readable

## NOTE: always leave space before and after <-, -, +, * and /
## At the very least use the automatic prettifier that comes with R-Studio. Select all lines (e.g. with Ctrl-A)
## and select Code => Reformat Code

x <- c(4,1,1,4)
y <- c(1,4)

x-y
## Missing explanation

s <- c(x,y)

rep(s,10)
srepeat <- rep(s,10)
length(srepeat)

rep(s, each=3)

## NOTE: by = 1 is the default
seq(7,21, by=1)
7:21

lseq <- seq(7,21, by=1)
length(lseq)
