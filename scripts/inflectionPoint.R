x = seq(1,15)
y = c(4,5,6,5,5,6,7,8,7,7,6,6,7,8,9)
plot(x,y,type="l",ylim=c(3,10))
lo <- lm(y~x)
xl <- seq(min(x),max(x), (max(x) - min(x))/1000)
length(xl)


out = predict(lo,xl)
lines(xl, out, col='red', lwd=2)

infl <- c(FALSE, diff(diff(out)>0)!=0)
print(diff(out))
points(xl[infl ], out[infl ], col="blue")
