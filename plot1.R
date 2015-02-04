## Plot1.png

power <- read.table("./Project 1/household_power_consumption.txt", header = TRUE, 
                    sep = ";", stringsAsFactors = FALSE, na.strings = "?")
power$Date <- as.Date(power$Date, format = "%d/%m/%Y")
powert <- subset(power, power$Date %in% as.Date(c("2007-02-01", "2007-02-02")))
powert$Global_active_power <- as.numeric(powert$Global_active_power)
png(filename = "plot1.png", width = 480, height = 480)
hist(powert$Global_active_power, col = "red", 
     xlab = "Global Active Power (Kilowatts)", main = "Global Active Power")
dev.off()

