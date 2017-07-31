Data1<-read.table("C:/Users/USER/Desktop/HCL/household_power_consumption.txt",sep=";",dec=".",header = TRUE)
Date<-as.Date(Data1$Date,format="%d/%m/%Y")
subsetdata<-subset(Data1,Data1$Date=="1/2/2007"|Data1$Date=="2/2/2007")
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subsetdata$Global_active_power)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

------FOR PLOTTING PNG----------
dev.copy(png,'plot2.png', width=480, height=480)
dev.off()
