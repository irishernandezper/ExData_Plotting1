#Set plot display to show 2x2 plots
par(mfrow=c(2,2))
#plot top left
plot(rd$Time,rd$Global_active_power,type="l", xlab=" ", ylab="Global Active Power")
#plot top right
plot(rd$Time,rd$Voltage,type="l", lwd=0.1,xlab = "datetime",ylab="Voltage")
#plot bottom left (modified legend is smaller and with no border)
plot(rd$Time,rd$Sub_metering_1,type="l",ylab = "Energy sub metering",xlab=" ")
points(rd$Time,rd$Sub_metering_2,type="l",col="red")
points(rd$Time,rd$Sub_metering_3,type="l",col="blue")
legend("topright",pch="l",col=c("black","red","blue"), cex=0.7, bty="n", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
#plot bottom right
plot(rd$Time,rd$Global_reactive_power,type="l",lwd=0.1, xlab="datetime",ylab = "Global_reactive_power")
