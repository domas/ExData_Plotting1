# plot2 from programming project 1
# author: Tomasz Domanski


# read data
source('read_data.R')

# we prepare plot in PNG device
png("plot3.png", width=480, height=480, units="px")
plot(dt$datetime, dt$sub_metering_1, type="l", col="black",
     xlab="",ylab="Energy sub metering")
lines(dt$datetime, dt$sub_metering_2, col="red")
lines(dt$datetime, dt$sub_metering_3, col="blue")
legend("topright", lty=1,col = c("black","red","blue"), 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
dev.off()