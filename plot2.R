source('read_data.R')

png('plot2.png')

with(read_data(), plot(DateTime, Global_active_power,
     main = "",
     ylab = "Global Active Power (kilowatts)",
     xlab = "",
     type = "l"
))

dev.off()