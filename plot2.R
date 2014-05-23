x <- read.csv("c:/Users/raymli/Desktop/in/household_power_consumption.txt", sep=";")
x <- x[x$Date %in% c("1/2/2007", "2/2/2007"),]
png("plot2.png", width=480, height=480)
xaxis <- strptime(paste(x$Date, x$Time), "%d/%m/%Y %H:%M:%S")
yaxis <- as.numeric(as.character(x$Global_active_power))
plot(xaxis, yaxis, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
