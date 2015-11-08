## Getting the data
data_tot<- read.csv("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?", stringsAsFactors=FALSE, dec=".")
sub_data_tot<- data_tot[data_tot$Date %in% c("1/2/2007","2/2/2007") ,]

## Subsets of data
datetime <- strptime(paste(sub_data_tot$Date, sub_data_tot$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(sub_data_tot$Global_active_power)
subMetering1 <- as.numeric(sub_data_tot$Sub_metering_1)
subMetering2 <- as.numeric(sub_data_tot$Sub_metering_2)
subMetering3 <- as.numeric(sub_data_tot$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
