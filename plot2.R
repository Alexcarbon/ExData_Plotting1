## Getting the data
data_tot<- read.csv("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?", stringsAsFactors=FALSE, dec=".")
sub_data_tot<- data_tot[data_tot$Date %in% c("1/2/2007","2/2/2007") ,]

## Subsets of data
datetime <- strptime(paste(sub_data_tot$Date, sub_data_tot$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(sub_data_tot$Global_active_power)
png("plot2.png")
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
