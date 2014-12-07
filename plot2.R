# plot2 from programming project 1
# author: Tomasz Domanski


# read data
source('read_data.R')

# we prepare plot in PNG device
png("plot2.png", width=480, height=480, units="px")
plot(dt$datetime, dt$gl_active_power, type="l",  xlab="", ylab="Global Active Power (kilowatts)")
dev.off()