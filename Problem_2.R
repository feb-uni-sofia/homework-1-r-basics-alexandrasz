## NOTE: readability: leave some blank linkes between the code to make it more readable

## NOTE: always leave space before and after <-, -, +, * and /
## At the very least use the automatic prettifier that comes with R-Studio. Select all lines (e.g. with Ctrl-A)
## and select Code => Reformat Code

## Note: write comments like a), b) to indicate which part of the problem you are
## referring to

xmin <- c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax <- c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)

dff <-  xmax - xmin

avgmax <- mean(xmax)
avgmin <- mean(xmin)
xmin [xmin < avgmin]
xmin [xmax > avgmax]

## NOTE: not DRY (don't repeate yourself). Assign the dates to a vector and
## then use that vector to assign names to the elements of xmin and xmax

names(xmin) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri' , 'Sat' , 'Sun')
names(xmax) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri' , 'Sat' , 'Sun')
temperature <- data.frame(xmin,xmax)

## NOTE: improve readability
temperature <- within(temperature,{
	xminFahrenheit <- xmin*9/5 + 32
})

ftemp <- data.frame(
  Max_temp_Fahr = xmax*9/5 + 32, 
  Min_temp_Fahr = xmin*9/5 + 32)

# better
ftemp[1:5, ]
ftemp[-(6:7), ]

FivedaytempFahrenheit  <- data.frame(
  Max_temp_Fahr = xmax[seq(1:5)]*9/5+32,
  Min_temp_Fahr = xmin[seq(1:5)]*9/5+32)
	FivedaytempFahrenheit <- data.frame(
  Max_temp_Fahr = xmax[seq(length(xmax)-2)]*9/5+32 ,
  Min_temp_Fahr = xmin[seq(length(xmin)-2)]*9/5+32)
