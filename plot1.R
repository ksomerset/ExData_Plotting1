library(dplyr)
library(data.table)
install.packages("png")
library(png)
power <- read.csv("./household_power_consumption.txt", sep=";", na.strings="?",stringsAsFactors = FALSE, colClasses = c("character", "character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
power$Date <- as.Date (power$Date, format = "%d/%m/%Y")
power$Time <- strptime(paste(power$Date, power$Time), "%F %T")
powersubset <- subset(power, power$Date == "2007-02-01"| power$Date == "2007-02-02") 
hist(powersubset$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.copy (png, file = "plot1.png", width=480, height=480)
dev.off()
