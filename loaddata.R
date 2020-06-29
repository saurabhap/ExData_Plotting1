library(dplyr)
powertb<- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", 
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