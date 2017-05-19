x = seq(1,21)
y = c(4,5,6,5,5,6,7,8,7,7,6,6,7,8,9,8,8,7,7,8,9)
plot(x,y,type="l",ylim=c(3,10))
lo <- loess(y~x)
xl <- seq(min(x),max(x), (max(x) - min(x))/1000)
out = predict(lo,xl)
lines(xl, out, col='red', lwd=2)

infl <- c(FALSE, diff(diff(out)>0)>0)
print(diff(out))
points(xl[infl ], out[infl ], col="blue")

infl <- c(FALSE, diff(diff(out)>0)<0)
print(diff(out))
points(xl[infl ], out[infl ], col="red")


df.Trades <- read.csv(file="~/R-Research/data/ES_Sample/ES_Trades.csv", nrows=8000)
names <- colnames(df.Trades)

#df.Trades <- read.csv(file="~/R-Research/data/ES_Sample/ES_Trades.csv", nrows=2500)
#df.Trades <- read.csv(file="~/R-Research/data/ES_Sample/ES_Trades.csv", skip=2000, nrows=2500)
#df.Trades <- read.csv(file="~/R-Research/data/ES_Sample/ES_Trades.csv", skip=4000, nrows=2500)
#df.Trades <- read.csv(file="~/R-Research/data/ES_Sample/ES_Trades.csv", skip=6000, nrows=2500)

colnames(df.Trades) <- names
#names <- colnames(df.Trades)
p = c(df.Trades$Price)
t = seq(1, 8000, 1)

plot(t,p)
#lo <- nls(p~a + b*t^2, start = list(a = 0.12345, b = 0.54321))
lo <- loess(p~t,span=1, degree=2)
out1 = predict(lo, t)

lines(t, out1, col='red', lwd=2)

infl <- c(FALSE, diff(diff(out1)>0)>0)
print(diff(out1))
points(t[infl ], out1[infl ], col="blue")

infl <- c(FALSE, diff(diff(out1)>0)<0)
print(diff(out1))
points(t[infl ], out1[infl ], col="red")

colMax <- function(data) sapply(data, max, na.rm = TRUE)

