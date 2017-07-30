Data1<-read.table("C:/Users/USER/Desktop/HCL/household_power_consumption.txt",sep=";",dec=".",header = TRUE)
Date<-as.Date(Data1$Date,format="%d/%m/%Y")
subsetdata<-subset(Data1,Data1$Date=="1/2/2007"|Data1$Date=="2/2/2007")
hist(as.numeric(as.character(subsetdata$Global_active_power)),col = "red",main="Global Active Power",xlab = "Global Active Power(Kilowatts)")

## ------------- For Plotting to a PNG File-----------------
dev.copy(png,'myplot1.png',width=480,height=480)
dev.off()
