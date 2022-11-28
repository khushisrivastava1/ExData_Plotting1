
sourcefile <- "household_power_consumption.txt"
data <- read.table(sourcefile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

date_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(date_data$Date, date_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
activepower <- as.numeric(date_data$Global_active_power)
png("plot2.png")
plot(datetime, activepower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()