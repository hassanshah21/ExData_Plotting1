plot2 <-function(){
  
    library(sqldf)
  #read.csv.sql("household_power_consumption.txt", header = TRUE,stringsAsFactors=FALSE,sep=";", sql=SQL))
  data <- read.csv.sql("household_power_consumption.txt", header = TRUE,stringsAsFactors=FALSE,sep=";", sql = "select * from file where Date in ('1/2/2007','2/2/2007')") 
  closeAllConnections()
  dateTime   <- as.POSIXlt(paste(as.Date(data$Date, format="%d/%m/%Y"), data$Time, sep=" "))
 
  plotdata <- data$Global_reactive_power
  #plot(dateTime,plotdata,type="l")
  
  png(filename="C:/Users/Hassanshah/Documents/courseera/4Assignment1/plot2.png")
  plot(dateTime,plotdata,type="l",xlab = "",ylab = "Global Active Power(kilowatts)")
  axis(1, at =1:6 ,labels=letters[1:6])
  dev.off()
  
  
  
  
  
  
}