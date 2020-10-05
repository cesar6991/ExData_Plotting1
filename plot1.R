unzip(zipfile = "exdata_data_household_power_consumption.zip")
my_data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
my_data<-my_data[66637:69516,]#I use grep() to find the number of row per each date
png("plot1.png")
hist(as.numeric(my_data$Global_active_power),col="red",main = "Global Active Power",xlab = "Global Active Power(kilowatts)")
dev.off()
