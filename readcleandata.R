#Fork repository, copy (use as directory)
#Download and unzip file

#Read txt data, header are variables, values are separated by ";" and missing values are recorded as "?"
rd<- read.delim(data,header=TRUE,sep=";",dec=".",na.strings="?")
#Subset data for the dates required 
rd<-subset(rd, Date == "1/2/2007" | Date == "2/2/2007")

#Transform Date column to date format
rd2<-strptime(rd$Date,"%d/%m/%Y")
#Create new datetime column (pasting date and time) and transform to date-time format 
rd3<-paste(rd$Time,rd$Date)
rd3<-strptime(rd4,"%H:%M:%S %d/%m/%Y")

#Modify the dataset with dyplyr package to substitute the columns Date and Time for their new counterparts (I put datetime in Time)
library(dplyr)
rd<- mutate(rd,Date=rd2,Time=rd3)

#The data is clean and ready to plot!