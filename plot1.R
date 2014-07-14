dt <- read.csv("exdata_data_household_power_consumption/household_power_consumption.txt", sep=";")
str(dt)
dt$newdate <- strptime(as.character(dt$Date), "%d/%m/%Y")
dt.sub1 <- subset(dt, newdate >= as.POSIXct('2007-02-01') & newdate <= as.POSIXct('2007-02-02') )

## plot 1
dt.sub1$GAP<-as.numeric(as.character(dt.sub1$Global_active_power))

png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(dt.sub1$GAP, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
dev.off()