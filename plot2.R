source('read_data.R')

data <- read_data()

png('plot2.png')

plot(data$DateTime, data$Global_active_power,
     main = "",
     ylab = "Global Active Power (kilowatts)",
     xlab = "",
     type = "l"
)

dev.off()