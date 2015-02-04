## Plot2.png

power <- read.table("./Project 1/household_power_consumption.txt", header = TRUE, 
                    sep = ";", stringsAsFactors = FALSE, na.strings = "?")
power$Date <- as.Date(power$Date, format = "%d/%m/%Y")
powert <- subset(power, power$Date %in% as.Date(c("2007-02-01", "2007-02-02")))
powert$Global_active_power <- as.numeric(powert$Global_active_power)
temp1 <- paste(powert$Date, powert$Time)
timepoint <- strptime(temp1, format = "%Y-%m-%d %H:%M:%S")
powert <- cbind(powert, timepoint, stringsAsFactors = FALSE)
png(filename = "plot2.png", width = 480, height = 480)
plot(powert$timepoint, powert$Global_active_power, type = "l", xlab = "",
     ylab = "Global Active Power (Kilowatts)")
dev.off()

