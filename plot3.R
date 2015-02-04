## Plot3.png

power <- read.table("./Project 1/household_power_consumption.txt", header = TRUE, 
                    sep = ";", stringsAsFactors = FALSE, na.strings = "?")
power$Date <- as.Date(power$Date, format = "%d/%m/%Y")
powert <- subset(power, power$Date %in% as.Date(c("2007-02-01", "2007-02-02")))
temp1 <- paste(powert$Date, powert$Time)
timepoint <- strptime(temp1, format = "%Y-%m-%d %H:%M:%S")
powert <- cbind(powert, timepoint, stringsAsFactors = FALSE)
png(filename = "plot3.png", width = 480, height = 480)
plot(powert$timepoint, powert$Sub_metering_1, type = "l", xlab = "", 
     ylab = "Energy sub metering")
points(powert$timepoint, powert$Sub_metering_2, type = "l", col = "red")
points(powert$timepoint, powert$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

