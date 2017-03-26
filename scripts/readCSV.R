df.ESQuotes <- read.csv(file="~/RProjects/data/ES_Sample/ES_Quotes.csv",nrows=2000)
head(df.ESQuotes, 100)

df.Trades <- read.csv(file="~/RProjects/data/ES_Sample/ES_Trades.csv", nrows=2000)
head(df.Trades, 1000)

df.Trades <- read.csv(file="~/RProjects/data/ES_Sample/ES_Trades.csv",skip=5450000, nrows=2000)
head(df.Trades, 1000-2000)

df.Trades <- read.csv(file="~/RProjects/data/ES_Sample/ES_Trades.csv",skip=5450000)
tail(df.Trades)




library(TTR)
df.Trades <- read.csv(file="~/RProjects/data/ES_Sample/ES_Trades.csv",nrows=10000)
a <-runSD(df.Trades$Price, 1000)
head(a,2000)
plot(a,col="red")
head(df.Trades, 100)
names <- colnames(df.Trades)
require(graphics)
with(df.Trades, scatter.smooth(Time, Price,span = 0.1, lpars = list(col = "red", lwd = 3, lty = 3)))
attach(df.Trades)
lo.df <- loess(Price ~ Time, span=0.1, data.frame(x=Time, y=Price))

#install.packages("TTR")
library(TTR)

esFile <- "~/RProjects/data/ES_Sample/ES_Trades.csv"

smoothFunc <- function(skip, nrows){
  df.Trades <- read.csv(esfile,skip, nrows, head=TRUE)
  colnames(df.Trades) <- names
  head(df.Trades, 100)
  require(graphics)
  with(df.Trades, scatter.smooth(Time, Price,span = 1/4, lpars = list(col = "red", lwd = 3, lty = 3)))
}
skip <- 1000
nrows <- 10000



lapply()

df.Trades <- read.csv(file="~/RProjects/data/ES_Sample/ES_Trades.csv",skip=1000, nrows=10000, head=TRUE)
colnames(df.Trades) <- names
head(df.Trades, 100)
require(graphics)
with(df.Trades, scatter.smooth(Time, Price,span = 0.1, lpars = list(col = "red", lwd = 3, lty = 3)))

df.Trades <- read.csv(file="~/RProjects/data/ES_Sample/ES_Trades.csv",skip=2000, nrows=10000, head=TRUE)
colnames(df.Trades) <- names
head(df.Trades, 100)
require(graphics)
with(df.Trades, scatter.smooth(Time, Price,span = 1/4, lpars = list(col = "red", lwd = 3, lty = 3)))

df.Trades <- read.csv(file="~/RProjects/data/ES_Sample/ES_Trades.csv",skip=3000, nrows=10000, head=TRUE)
colnames(df.Trades) <- names
head(df.Trades, 100)
require(graphics)
with(df.Trades, scatter.smooth(Time, Price,span = 1/4, lpars = list(col = "red", lwd = 3, lty = 3)))


df.Trades <- read.csv(file="~/RProjects/data/ES_Sample/ES_Trades.csv",skip=200, nrows=6000)
head(df.Trades, 100)
require(graphics)
with(df.Trades, scatter.smooth(df.Trades[2], df.Trades[3],span = 1/4, lpars = list(col = "red", lwd = 3, lty = 3)))

head(df.Trades, 100)

head(df.Trades, n=1)



df.Trades <- read.csv(file="~/RProjects/data/ES_Sample/ES_Trades.csv",nrows=8192)
require(wavethresh)
est1 <- cthresh(df.Trades[, "Price"], TI=TRUE)
tail(est1, 1024)
plot(1:8192, df.Trades[, "Price"], lty=2, type="l")
lines(1:8192, est1, col=3)

head(df.Trades, 100)
require(graphics)
with(df.Trades, scatter.smooth(Time, Price,span = 1/4, degree=1, lpars = list(col = "red", lwd = 3, lty = 3)))
library(pastecs)
price.tp <- turnpoints(df.Trades[, "Price"])

typeof(price.tp)

price.tp

