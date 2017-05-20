#install.packages("wavethresh")
library(wavethresh)
#x <- sort(runif(2^10))
#y <- sin(2*pi*x) + .4 * rnorm(2^10)
x = seq(1,16)
y = c(4,5,6,5,5,6,7,8,7,7,6,6,7,8,9,7)
#x = seq(1,8)
#y = c(4,5,6,5,5,6,7,8)
plot(x,y,type="l",ylim=c(3,10), col='green')

wy <- wd(y)
thresh <- threshold(wy, type="soft")
yr <- wr(thresh)

lines(x, yr)

infl <- c(FALSE, diff(diff(yr)>0)!=0)
print(diff(yr))
points(x[infl ], yr[infl ], col="red", type="p", pch=16, bg="red")

