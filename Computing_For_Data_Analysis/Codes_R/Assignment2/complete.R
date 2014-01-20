complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  source('getmonitor.R')
  tid <- as.vector(as.integer(id))
  if (tid < 1 || tid > 332) {
    print("id must in 1:332")
    stop()
  }
  result.rownum<-length(id)
  result <- data.frame(id = integer(result.rownum), nobs = integer(result.rownum))
  for(i in 1:result.rownum){
    MyData<-getmonitor(id[i],directory)
   ok<-complete.cases(MyData)
    n<-sum(ok)
    result[i,]<-c(id[i],n)
  }
return(result)
  
}