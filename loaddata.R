library(dplyr)
# Download data files from link https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
             destfile = "dataset.zip")
unzip("dataset.zip", exdir="ExData_Plotting/")

powertb<- read.table("household_power_consumption.txt", 
                       header = TRUE, 
                       colClasses = c(rep("character", 2), 
                                      rep("numeric", 7)), 
                       na.strings = "?", 
                       sep = ";")
powertb$Date<- as.Date(powertb$Date, "%d/%m/%Y")
powertb<- filter(powertb,
                 Date==as.Date("2007-02-01") | Date==as.Date("2007-02-02")
                 )
powertb$DateTime<- with(powertb, 
                        strptime(paste(Date, Time),
                                 "%Y-%m-%d %H:%M:%S"))
