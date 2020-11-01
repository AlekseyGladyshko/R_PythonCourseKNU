pmean <- function(directory, pollutant, id = 1:332){
  path <- paste("D:/Универ/FIT/Python + R/Mine", directory, sep = '/')
  
  files <- list.files(path, full.names = TRUE)
  data <- data.frame()
  
  for (i in id) {
    data <- rbind(data, read.csv(files[i]))
  }
  
  mean(data[[pollutant]], na.rm = TRUE)
}

complete <- function(directory, id) {
  path <- paste("D:/Универ/FIT/Python + R/Mine", directory, sep = '/')
  
  files <- list.files(path, full.names = TRUE)
  data <- data.frame()
  
  for(i in id) {
    nobs <- sum(complete.cases(read.csv(files[i])))
    data <- rbind(data, data.frame(i, nobs))
  }
  
  data
}

corr <- function(directory, threshold = 0) {
  path <- paste("D:/Универ/FIT/Python + R/Mine", directory, sep = '/')
  
  files <- list.files(path, full.names = TRUE)
  data <- c()
  
  for(i in 1:length(files)) {
    df <- read.csv(files[i])
    df <- df[complete.cases(df),]
    
    if(nrow(df) > threshold) {
      data <- c(data, cor(df[,"sulfate"], df[,"nitrate"]))
    }
  }
  
  data
}