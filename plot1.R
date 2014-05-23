x <- read.csv("household_power_consumption.txt", sep=";")
x <- x[x$Date %in% c("1/2/2007", "2/2/2007"),]
png("plot1.png", width=480, height=480)
hist(as.numeric(as.character(x$Global_active_power)), main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()
