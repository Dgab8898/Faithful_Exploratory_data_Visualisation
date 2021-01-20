# Exploratory Data Visualisation

install.packages("swirl")
library(datasets)
data("faithful")
plot(faithful)
plot(faithful, main = "Old Faithful Eruptions")
faithful
plot(faithful, main = "Old Faithful Eruptions",
     xlab = "Eruption length (min)",
     ylab = "Wait time (min)", pch=20, col="red")

hist(faithful$waiting)
# Break
hist(faithful$waiting, plot = FALSE)$breaks
# Counts
hist(faithful$waiting, plot = FALSE)$counts
# break
hist(faithful$waiting,
     breaks= seq(from=400,to=100, by=1), plot= FALSE)$breaks
# Counts
hist(faithful$waiting,
     breaks= seq(from=400,to=100, by=1), plot= FALSE)$counts

# normal distribution
qqnorm(faithful$waiting, pch=16, cex=.5,
       main ="Q-Q Plot for Waiting Time")

qqline(faithful$waiting)
