library(dplyr)
df <- read.table("household_power_consumption.txt",sep = ';',header = T)
as.Date(df$Date,format='%d/%m/%Y') -> df$Date
filter(df,(Date=='2007-02-01' | Date=='2007-02-02')) ->DF
plot(as.numeric(as.character(DF$Global_active_power)),type='l',xaxt='n',ylab ="Global Active Power (kilowatts)",xlab="",lwd=1.5)
axis(side=1,seq(0,2880,length=3),labels = c("Thu","Fri","Sat"))
