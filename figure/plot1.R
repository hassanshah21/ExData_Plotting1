plot1 <-function(){
  
#  library(sqldf)
  #read.csv.sql("household_power_consumption.txt", header = TRUE,stringsAsFactors=FALSE,sep=";", sql=SQL))
  data <- read.csv.sql("household_power_consumption.txt", header = TRUE,stringsAsFactors=FALSE,sep=";", sql = "select * from file where Date in ('1/2/2007','2/2/2007')") 
  closeAllConnections()
  plotdata <- data$Global_reactive_power
  (wwt <- hist(data$Global_reactive_power, plot = FALSE))
  plot(wwt, labels = TRUE) # default main & xlab using wwt$xname
  plot(wwt, border = "dark blue", col = "Red",
       main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
  png(filename="C:/Users/Hassanshah/Documents/courseera/4Assignment1/plot1.png")
  (wwt <- hist(data$Global_reactive_power, plot = FALSE))
  
  plot(wwt, labels = TRUE)
  plot(wwt, border = "black", col = "Red",
       main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
  dev.off()
  
}