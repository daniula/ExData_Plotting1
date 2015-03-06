source('read_data.R')

png('plot4.png')

par(mfcol = c(2,2))

with(read_data(), {
    plot(DateTime, Global_active_power,
        main = "",
        ylab = "Global Active Power",
        xlab = "",
        type = "l")
    
    plot(DateTime, Sub_metering_1,
         main = "",
         ylab = "Energy sub metering",
         xlab = "",
         type = "l",
         col = "black",
    )
    lines(DateTime, Sub_metering_2, type = "l", col = "red")
    lines(DateTime, Sub_metering_3, type = "l", col = "blue")
    legend("topright", lwd = 1,
           col = c("black", "red", "blue"),
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
    )
    
    plot(DateTime, Voltage, xlab="datetime", type="l")
    plot(DateTime, Global_reactive_power, xlab="datetime", type="l")
})

dev.off()