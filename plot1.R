data<-read.table("household_power_consumption.txt", sep=";",header=TRUE, dec=".",na.string="?")
data1<-data[(data$Date=="1/2/2007"|data$Date=="2/2/2007"),]
Sys.setlocale("LC_TIME",locale="English")
png(file="plot1.png")
hist(data1$Global_active_power, col="red", main="Global Active Power", xlab="Global active power(kilowatts)")
dev.off()