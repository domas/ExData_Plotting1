# plot4 from programming project 1
# author: Tomasz Domanski


# read data
source('read_data.R')

# we prepare plot in PNG device
png("plot4.png", width=480, height=480, units="px")
par(mfrow = c(2, 2))
plot(dt$datetime, dt$gl_active_power, type="l",  xlab="", ylab="Global Active Power")
plot(dt$datetime, dt$voltage, type="l",  xlab="", ylab="Voltage")


plot(dt$datetime, dt$sub_metering_1, type="l", col="black",
     xlab="",ylab="Energy sub metering")
lines(dt$datetime, dt$sub_metering_2, col="red")
lines(dt$datetime, dt$sub_metering_3, col="blue")
legend("topright", lty=1,col = c("black","red","blue"), 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
plot(dt$datetime, dt$gl_reactive_power, type="l",  xlab="", ylab="Global_reactive_power")
dev.off()

