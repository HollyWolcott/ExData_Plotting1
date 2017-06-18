library("dplyr")

tmp<- read.csv("C:/Users/Holly/Downloads/household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

tmp<-tmp %>% filter(Date=="1/2/2007" | Date=="2/2/2007")

datetime <- strptime(paste(tmp$Date, tmp$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(tmp$Global_active_power)

png("ExData_Plotting1/plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()