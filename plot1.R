library(data.table)
dat <- fread(input = "household_power_consumption.txt", na.strings="?")
selected_data <- dat[dat$Date %in% c("1/2/2007","2/2/2007") ,]
png("plot1.png", width=480, height=480)
hist(selected_data$Global_active_power,col = "red", main = "Global Active Power",xlab = "Global Active power(kilowatts)")
dev.off()
