# Script for reading data for project 1 
# author: Tomasz Domanski

FILENAME <- 'household_power_consumption.txt'
classes <- c("character", "character", rep("numeric", 7))
colNames <- c("date", "time", "gl_active_power", "gl_reactive_power", "voltage",
              "gl_intensity", "sub_metering_1", "sub_metering_2", "sub_metering_3")

# we know the file so we can read the subset of rows 
dt <- read.table(FILENAME, header=F, colClasses=classes, na.strings=c("?"), 
                 sep=";", nrows=40000, skip=60000, col.names=colNames)

# refining data
dt <- dt[dt$date == "1/2/2007" | dt$date == "2/2/2007",]
dt$datetime <- strptime(paste(dt$date, dt$time, sep=" "), format="%d/%m/%Y %T")
dt$date <- as.Date(dt$date, format="%d/%m/%Y")
