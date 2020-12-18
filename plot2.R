plot(rd$Time,rd$Global_active_power,type="l", xlab=" ", ylab="Global Active Power (kilowatts)")

#it does not work, we are not representing dates, rather a time continium (combining both date and time)


t <- strptime(paste(power$Date, power$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
#attempt to combine date time, results in NA

##***there's something wrong with my TIME variable, has a date attached (but not the one we want)