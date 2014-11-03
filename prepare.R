# This file is downloading, loading and cleaning the source data. 
# After sourcing this file, the plotData variable contains the relevant dataset 
# (2007-02-01 & 2007-02-02) for the plot assignments

require(lubridate, plyr)

plotData <- (function() {
    
    if(!file.exists("./household_power_consumption.txt")) {
        
        if(!file.exists("./source.zip")) {
            print("Downloading datafile")
            fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
            download.file(fileUrl, destfile = "./source.zip")
        }
        
        print("Extracting datafile")
        unzip("./source.zip", exdir = ".")
    }

    
    data <- read.csv2("household_power_consumption.txt", 
                      stringsAsFactor = FALSE, 
                      na.strings = "?", 
                      colClasses = c("character", "character", rep("numeric", 7)), 
                      dec = ".")
    data <- mutate(data, Date = dmy(Date), DateTime = Date + hms(Time))
    subset(data, Date %in% c(ymd("2007-02-01"), ymd("2007-02-02")))

})()


