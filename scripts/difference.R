temp= c(10,1,1,1,2,1,1,1,3,10)
diff(temp)
diff(temp)>0

diff(diff(temp)>0)
diff(temp, differences = 2)

diff(diff(temp)>0)!=0


df.Trades <- read.csv(file="~/R-Research/data/ES_Sample/ES_Trades.csv",nrows=10000)
names <- colnames(df.Trades)
