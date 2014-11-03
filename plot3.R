source('./prepare.R')

png(file = "plot3.png", width = 480, height = 480, bg = NA)

plot(plotData$DateTime, 
     plotData$Sub_metering_1, 
     ylab = "Energy sub metering", 
     col = "black",
     xlab = "", 
     type = "l")
points(plotData$DateTime,
       plotData$Sub_metering_2, 
       col = "red",
       type = "l")
points(plotData$DateTime,
       plotData$Sub_metering_3, 
       col = "blue", 
       type = "l")
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), 
       lwd = 1)

dev.off()
