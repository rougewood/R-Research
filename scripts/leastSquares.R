set.seed(20160227)
x<-seq(0,50,1)
y<-((runif(1,10,20)*x)/(runif(1,0,10)+x))+rnorm(51,0,1)
#for simple models nls find good starting values for the parameters even if it throw a warning
#m<-nls(y~a*x/(b+x))
m<-nls(y~a*x-b)
#get some estimation of goodness of fit
cor(y,predict(m))

#plot
plot(x,y)
lines(x,predict(m),lty=2,col="red",lwd=3)




y<-runif(1,5,15)*exp(-runif(1,0.01,0.05)*x)+rnorm(51,0,0.5)
#visually estimate some starting parameter values
plot(x,y)
#from this graph set approximate starting values
a_start<-8 #param a is the y value when x=0
b_start<-2*log(2)/a_start #b is the decay rate
#model
m<-nls(y~a*exp(-b*x),start=list(a=a_start,b=b_start))
#get some estimation of goodness of fit
cor(y,predict(m))

#plot the fit
lines(x,predict(m),col="red",lty=2,lwd=3)







year <- c(2000 ,   2001  ,  2002  ,  2003 ,   2004)
rate <- c(9.34 ,   8.50  ,  7.62  ,  6.93  ,  6.60)
plot(year,rate,
     main="Commercial Banks Interest Rate for 4 Year Car Loan",
     sub="http://www.federalreserve.gov/releases/g19/20050805/")
cor(year,rate)
fit <- lm(rate ~ year)
fit
abline(fit)

plot(year,fit$residuals)
residualSquare <-fit$residuals ^ 2
squareRoot <- sqrt(sum(residualSquare)/length(year))
squareRoot
plot(year,residualSquare)

attributes(fit)
fit$qr

names <- c("Time","Price")

rows <- 1000
df.Trades <- read.csv(file="~/R-Research/data/ES_Sample/ES_Trades.csv",nrows=rows)
names <- colnames(df.Trades)
head(df.Trades, rows)
plot(df.Trades[["Time"]],df.Trades[["Price"]],
     main="Commercial Banks Interest Rate for 4 Year Car Loan",
     sub="http://www.federalreserve.gov/releases/g19/20050805/")
length(df.Trades[["Price"]])

cor(c(1:rows),df.Trades[["Price"]])
fit <- lm(df.Trades[["Price"]] ~ df.Trades[["Time"]])
fit$coefficients[2]
abline(fit)
#plot(df.Trades[["Time"]],fit$residuals)
residualSquare <-fit$residuals ^ 2
squareRoot <- sqrt(sum(residualSquare)/rows)
squareRoot



df.Trades <- read.csv(file="~/R-Research/data/ES_Sample/ES_Trades.csv",skip=800, nrows=800)
colnames(df.Trades) <- names
head(df.Trades, 10)
length(df.Trades[["Price"]])
plot(df.Trades[["Time"]],df.Trades[["Price"]],
     main="Commercial Banks Interest Rate for 4 Year Car Loan",
     sub="http://www.federalreserve.gov/releases/g19/20050805/")
length(df.Trades[["Price"]])
cor(c(1:800),df.Trades[["Price"]])


df.Trades <- read.csv(file="~/R-Research/data/ES_Sample/ES_Trades.csv",skip=1600, nrows=800)
colnames(df.Trades) <- names
head(df.Trades, 10)
length(df.Trades[["Price"]])
plot(df.Trades[["Time"]],df.Trades[["Price"]],
     main="Commercial Banks Interest Rate for 4 Year Car Loan",
     sub="http://www.federalreserve.gov/releases/g19/20050805/")
length(df.Trades[["Price"]])
cor(c(1:800),df.Trades[["Price"]])

df.Trades <- read.csv(file="~/R-Research/data/ES_Sample/ES_Trades.csv",skip=2000, nrows=800)
colnames(df.Trades) <- names
head(df.Trades, 10)
length(df.Trades[["Price"]])
plot(df.Trades[["Time"]],df.Trades[["Price"]],
     main="Commercial Banks Interest Rate for 4 Year Car Loan",
     sub="http://www.federalreserve.gov/releases/g19/20050805/")
length(df.Trades[["Price"]])
cor(c(1:800),df.Trades[["Price"]])
fit <- lm(df.Trades[["Price"]] ~ df.Trades[["Time"]])
fit

