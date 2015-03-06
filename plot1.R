source('read_data.R')

png('plot1.png')

with(read_data(), hist(Global_active_power,
    col = "red",
    main = "Global Active Power",
    xlab = "Global Active Power (kilowatts)",
))

dev.off()