library(dplyr)
df <- read.table("household_power_consumption.txt",sep = ';',header = T)
as.Date(df$Date,format='%d/%m/%Y') -> df$Date
filter(df,(Date=='2007-02-01' | Date=='2007-02-02')) ->DF
hist(as.numeric(DF$Global_active_power)/1000,xlab = "Global Active Power (kilowatts)",col="red",main="Global Active Power",xlim = c(0,6))