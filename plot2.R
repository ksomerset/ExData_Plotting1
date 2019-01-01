power$Time <- as.numeric(power$Time)
plot(powersubset$Time, powersubset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy (png, file = "plot2.png", width=480, height=480)
dev.off()