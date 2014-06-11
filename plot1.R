

setwd("C:/Users/AllUsers/Documents/Bart's Stuff/RDataAndCode/IntroToRCourse")

x <- read.csv("energydata/household_power_consumption.txt", sep=";", na.strings="?", header=TRUE, 
colClasses=c("character", "character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

x$Date

x$Date <- as.Date(x$Date, "%d/%m/%Y")

x$Date

# this adds today's date, n.g 
# x$Time <- strptime(x$Time, format="%H:%M:%S")

y <- x[ x$Date %in% c(as.Date("2007-02-01"), as.Date("2007-02-02")), ]


# y <- subset(x, Date == as.Date("2006-12-16") | as.Date("2006-12-23"))
# EPL2011_12FirstHalf <- subset(EPL2011_12, Date2 > as.Date("2012-01-13") )

nrow(y)
summary(y)

hist(y$Global_active_power, breaks = 25, freq=TRUE, col="RED", main = paste("Histogram of GAP"), xlab="Global Active Power")

