read_data <- function(filename = 'household_power_consumption.txt') {
    if (!file.exists(filename)) {
        stop(paste(filename, 'is missing'))
    }
    header <- read.csv2(filename, nrows = 1, header = FALSE, stringsAsFactors = FALSE)
    data <- read.csv2(
        filename,
        skip = 66637,
        nrows = (69517 - 66637),
        colClasses = c("character", "character", rep("numeric", each = 7)),
        na.strings = "?",
        dec = ".",
        header = FALSE,
        stringsAsFactors = FALSE
    )
    colnames(data) <- unlist(header)
    data$Date <- as.Date(data$Date, "%d/%m/%Y")
    data$Time <- strptime(data$Time, "%H:%M:%S")
    data
}