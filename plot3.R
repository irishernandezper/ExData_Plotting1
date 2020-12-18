plot(rd$Time,rd$Sub_metering_1,type="l",ylab = "Energy sub metering",xlab=" ")
points(rd$Time,rd$Sub_metering_2,type="l",col="red")
points(rd$Time,rd$Sub_metering_3,type="l",col="blue")
legend("topright",pch="l",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
