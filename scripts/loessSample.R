
mydata <-read.csv("http://doylesdartden.com/Example-ND.csv", sep=",", nrows=200, header=TRUE)
head(mydata, 20)
nrow(mydata)
attach(mydata)

#Plots the data
plot(Year, EMD)

# Apply loess smoothing using the default span value of 0.8.  You can change the curve by changing the span value.
y.loess <- loess(y ~ x, span=0.1, degree=2, data.frame(x=Year, y=EMD))
y.predict <- predict(y.loess, data.frame(x=Year))

# Plots the curve.
lines(Year,y.predict)

#Add title
title(main="Simple Code Example")
y.loess["fitted"]
         
         
         
mydata1 <-read.csv("http://doylesdartden.com/Example-ND.csv", sep=",", skip=21, nrows=200, header=FALSE)
#mydata1 <-read.csv("http://doylesdartden.com/Example-ND.csv", sep=",", nrows=110, header=TRUE)
names(mydata1)<-c("Date","Year","EMD","D_EMD")
         head(mydata1)
         nrow(mydata1)
         attach(mydata1)
         
         #Plots the data
         plot(Year, EMD)
         
         # Apply loess smoothing using the default span value of 0.8.  You can change the curve by changing the span value.
         y.loess <- loess(y ~ x, span=0.1, degree=2, data.frame(x=Year, y=EMD))
         y.predict <- predict(y.loess, data.frame(x=Year))
         
         # Plots the curve.
         lines(Year,y.predict)
         
         #Add title
         title(main="Simple Code Example")
         y.loess["fitted"]
         
         
         lsD9 <- lsfit(x = unclass(gl(2, 10)), y = weight)
         ls.print(lsD9)
         