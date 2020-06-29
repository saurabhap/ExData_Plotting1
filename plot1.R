# Loading Data
source("loaddata.R")

# Opening PNG device 
png(filename = "plot1.png")
with(powertb,
     hist(Global_active_power,
       main = "Global Active Power",
       xlab = "Global Active Power (kilowatts)",
       col = "red"
     )
     )

# Closing PNG device
dev.off()