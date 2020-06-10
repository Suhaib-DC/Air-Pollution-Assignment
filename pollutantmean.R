
pollutantmean <- function(directory = "specdata", pollutant, id = 1:332) {
        
        
        temp = list.files(pattern="*.csv")
        alldata <- numeric(0)
        
        for (i in id) {
               
               data <- read.csv(temp[i])
               colum <- data[[pollutant]]
               alldata <- c(alldata, colum)
               
        }
        
       mean(alldata, na.rm = T)
}
