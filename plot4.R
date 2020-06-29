# Loading Data
source("loaddata.R")

# Opening PNG device
png("plot4.png")
par(mfrow= c(2,2))

#TopLeft plot
with(powertb, 
     plot(DateTime,
          Global_active_power,
          type= "l",
          xlab = "",
          ylab = "Global Active Power",
          col= "black"
     )
)

#TopRight Plot
with(powertb, 
     plot(DateTime,
          Voltage,
          type= "l",
          xlab = "datetime",
          ylab = "Voltage",
          col= "black"
     )
)

#BottomLeft Plot
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
       lwd = 1,
       bty = "n"
)

#BottomRight
with(powertb, 
     plot(DateTime,
          Global_reactive_power,
          type= "l",
          xlab = "datetime",
          ylab = "Global_reactive_power",
          col= "black"
     )
)

# Closing PNG device
dev.off()