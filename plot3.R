plot3 <-function(){
  
  #  library(sqldf)
  #read.csv.sql("household_power_consumption.txt", header = TRUE,stringsAsFactors=FALSE,sep=";", sql=SQL))
  data <- read.csv.sql("household_power_consumption.txt", header = TRUE,stringsAsFactors=FALSE,sep=";", sql = "select * from file where Date in ('1/2/2007','2/2/2007')") 
  closeAllConnections()
  dateTime   <- as.POSIXlt(paste(as.Date(data$Date, format="%d/%m/%Y"), data$Time, sep=" "))
  sub1 <- data$Sub_metering_1
    sub2 <- data$Sub_metering_2
    sub3 <- data$Sub_metering_3
  plotdata <- data$Global_reactive_power
  #plot(dateTime,plotdata,type="l")
  
  png(filename="C:/Users/Hassanshah/Documents/courseera/4Assignment1/plot2.png")
  plot(dateTime,sub1,sub2,sub3,type="l",xlab = "",ylab = "Energy Submetering")
  legend("topright",lenged = "sub_metering_1", pch = -)
  legend("topright",lenged = "sub_metering_2")
  legend("topright",lenged = "sub_metering_3")
  axis(1, at =1:6 ,labels=letters[1:6])
  dev.off()
  
  
  
  
  
  
}