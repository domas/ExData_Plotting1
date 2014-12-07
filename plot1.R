# plot1 from programming project 1
# author: Tomasz Domanski

# read data
source('read_data.R')

# we prepare plot in PNG device
png("plot1.png", width=480, height=480, units="px")
hist(dt$gl_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", col="red")
dev.off()