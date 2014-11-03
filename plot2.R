source('./prepare.R')

png(file = "plot2.png", width = 480, height = 480, bg = NA)

plot(plotData$DateTime, 
     plotData$Global_active_power, 
     type = "l",
     ylab = "Global Active Power (kilowatts)", 
     xlab = "")

dev.off()
