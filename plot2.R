data<-read.table("household_power_consumption.txt", sep=";",header=TRUE, dec=".",na.string="?")
data1<-data[(data$Date=="1/2/2007"|data$Date=="2/2/2007"),]
Sys.setlocale("LC_TIME",locale="English")
library(lubridate)
dt<-dmy(data1$Date)
dt1<-hms(data1$Time)
tt<-update(dt,hours=hour(dt1), minutesm=minute(dt1), seconds=0)
png(file="plot2.png")
plot(tt,data1$Global_active_power,type=("l"),xlab="" , ylab="Global Active Power [KWh]")
dev.off()

