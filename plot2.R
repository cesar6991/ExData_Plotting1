unzip(zipfile = "exdata_data_household_power_consumption.zip")
my_data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
my_data<-my_data[66637:69516,]#I use grep() to find the number of row per each date
my_data$datetime <- strptime(paste(my_data$Date, my_data$Time), format = "%d/%m/%Y %H:%M:%S")
png("plot2.png")
with(my_data,plot(datetime,Global_active_power,type="l",ylab="Global Active Power(kilowatts)",xlab=""))
dev.off()