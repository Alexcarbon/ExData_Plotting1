## Getting the data
data_tot<- read.csv("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?", stringsAsFactors=FALSE, dec=".")
sub_data_tot<- data_tot[data_tot$Date %in% c("1/2/2007","2/2/2007") ,]

## Subsets of data
globalActivePower <- as.numeric(sub_data_tot$Global_active_power)
png("plot1.png")
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
