# Loading Data
source("loaddata.R")

# Opening the PNG device
png(filename = "plot2.png")
with(powertb, 
     plot(DateTime,
          Global_active_power,
          type= "l",
          xlab = "",
          ylab = "Global Active Power (kilowatts)",
          col= "black"
          )
     )

# Closing PNG device
dev.off()