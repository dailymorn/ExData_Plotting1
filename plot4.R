x <- read.csv("c:/users/raymli/desktop/in/household_power_consumption.txt", sep=";")
x <- x[x$Date %in% c("1/2/2007", "2/2/2007"),]
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
xaxis <- strptime(paste(x$Date, x$Time), "%d/%m/%Y %H:%M:%S")

#plot1
yaxis <- as.numeric(as.character(x$Global_active_power))
plot(xaxis, yaxis, type="l", xlab="", ylab="Global Active Power")

#plot2
yaxis <- as.numeric(as.character(x$Voltage))
plot(xaxis, yaxis, type="l", xlab="datetime", ylab="Voltage")

#plot3
yaxis <- as.numeric(as.character(x$Sub_metering_1))
plot(xaxis, yaxis, type="l", xlab="", ylab="Energy sub metering")

yaxis <- as.numeric(as.character(x$Sub_metering_2))
lines(xaxis, yaxis, col="red")

yaxis <- as.numeric(as.character(x$Sub_metering_3))
lines(xaxis, yaxis, col="blue")

legend("topright", names(x)[7:9], col=c("black", "red", "blue"), lwd=c(1,1,1))

#plot4
yaxis <- as.numeric(as.character(x$Global_reactive_power))
plot(xaxis, yaxis, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
