
complete <- function(directory = "specdata", id = 1:332){
  
          temp = list.files(pattern = "*.csv")
          nobs <- c()
          
          
          for (i in id) {
            
                  data <- read.csv(temp[i])
                  cdata <- data$Date[complete.cases(data)]
                  
                  nobs <- c(nobs,length(cdata))
                  
                  
          }
          
          data.frame(id, nobs)
          
          
}