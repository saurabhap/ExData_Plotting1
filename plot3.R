#Load the Data
source("loaddata.R")

# Opening PNG device
png(filename = "plot3.png")
with(powertb, 
     plot(DateTime,
          Sub_metering_1,
          type="l",
          xlab="",
          ylab = "Energy sub metering",
          col = "black",
          )
     )
with(powertb,
     lines(DateTime,
           Sub_metering_2,
           col="red"
           )
     )
with(powertb,
     lines(DateTime,
           Sub_metering_3,
           col= "blue"
           )
     )
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "sub_metering_3"),
       col = c("black", "red", "blue"),
       lwd = 1
       )

# Closing PNG Device
dev.off()