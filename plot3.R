x <- read.csv("household_power_consumption.txt", sep=";")
x <- x[x$Date %in% c("1/2/2007", "2/2/2007"),]
png("plot3.png", width=480, height=480)
xaxis <- strptime(paste(x$Date, x$Time), "%d/%m/%Y %H:%M:%S")

yaxis <- as.numeric(as.character(x$Sub_metering_1))
plot(xaxis, yaxis, type="l", xlab="", ylab="Energy sub metering")

yaxis <- as.numeric(as.character(x$Sub_metering_2))
lines(xaxis, yaxis, col="red")

yaxis <- as.numeric(as.character(x$Sub_metering_3))
lines(xaxis, yaxis, col="blue")

legend("topright", names(x)[7:9], col=c("black", "red", "blue"), lwd=c(1,1,1))

dev.off()
