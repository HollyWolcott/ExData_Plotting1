library("dplyr")

tmp<- read.csv("C:/Users/Holly/Downloads/household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

tmp<-tmp %>% filter(Date=="1/2/2007" | Date=="2/2/2007")
tmp$Global_active_power<-as.numeric(tmp$Global_active_power)

png(filename = "ExData_Plotting1/plot1.png", width = 480, height = 480, units = "px")
hist(tmp$Global_active_power, col = "red", main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()