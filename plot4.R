source('./prepare.R')

png(file = "plot4.png", width = 480, height = 480, bg = NA)

# Create a grid of 2 x 2 plots
par(mfrow = c(2, 2))

# left top
plot(plotData$DateTime, 
     plotData$Global_active_power, 
     type = "l",
     ylab = "Global Active Power", 
     xlab = "")

# right top
plot(plotData$DateTime, 
     plotData$Voltage, 
     type = "l", 
     ylab = "Voltage", 
     xlab = "datetime")

# left bottom
plot(plotData$DateTime, 
     plotData$Sub_metering_1, 
     type = "l", 
     ylab = "Energy sub metering", 
     xlab = "")
points(plotData$DateTime, 
       plotData$Sub_metering_2, 
       col = "red", 
       type = "l")
points(plotData$DateTime, 
       plotData$Sub_metering_3, 
       col = "blue", 
       type = "l")
legend("topright", 
       box.col = NA, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black","red", "blue"), 
       lwd = 1)

# right bottom
plot(plotData$DateTime, 
     plotData$Global_reactive_power, 
     type = "l", 
     ylab = "Global_reactive_power", 
     xlab = "datetime")


dev.off()