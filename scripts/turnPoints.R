library(pastecs)
data(marbio)
plot(marbio[, "Nauplii"], type="l")
# Calculate turning points for this series
Nauplii.tp <- turnpoints(marbio[, "Nauplii"])
summary(Nauplii.tp)
plot(Nauplii.tp)
# Add envelope and median line to original data
plot(marbio[, "Nauplii"], type="l")
lines(Nauplii.tp)
# Note that lines() applies to the graph of original dataset!!!
title("Raw data, envelope maxi., mini. and median line")