source('read_data.R')

data <- read_data()

png('plot1.png')

hist(data$Global_active_power,
    col = "red",
    main = "Global Active Power",
    xlab = "Global Active Power (kilowatts)",
)

dev.off()