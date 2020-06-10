
corr <- function (directory, threshold = 0) {
        
        abovethreshold <- c()
        corr <- c()
        com <- complete()
        
        for (i in 1:332){
          if (com$nobs[i] > threshold) {
            abovethreshold <- c(abovethreshold,com$id[i])
          }
        }
        
        temp = list.files(pattern = "*.csv")
        
        for (i in abovethreshold) {
          data <- read.csv(temp[i])
          corr <- c(corr, cor(data$sulfate, data$nitrate, use = "complete.obs"))
        }
        corr
}