library(dplyr)
df <- read.table("household_power_consumption.txt",sep = ';',header = T)
as.Date(df$Date,format='%d/%m/%Y') -> df$Date
filter(df,(Date=='2007-02-01' | Date=='2007-02-02')) ->DF
plot(as.numeric(as.character(DF$Sub_metering_1)),type='l',xaxt='n',ylab ="Energy sub metering",xlab="",lwd=1.5,col="black")
lines(as.numeric(as.character(DF$Sub_metering_2)),type="l",col="red",lwd=1.5)
lines(as.numeric(as.character(DF$Sub_metering_3)),type="l",col="blue",lwd=1.5)
axis(side=1,seq(0,2880,length=3),labels = c("Thu","Fri","Sat"))
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col = c("black","red","blue"))
