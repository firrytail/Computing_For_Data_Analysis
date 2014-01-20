corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations

  source('~/Documents/R/Coursera/ProgrammingHW1/complete.R')
  source('~/Documents/R/Coursera/ProgrammingHW1/getmonitor.R')
  id.num<-length(list.files(path=directory))
  result<-as.numeric(vector())
  SingleCorr<-function(id){
    flag<-complete(directory,id)
    if(flag[1,2]>threshold){
      data<-getmonitor(id,directory)
      correlation<-cor(data$sulfate,data$nitrate,use="complete.obs")
      result[length(result) + 1] <<- correlation
    } #else {
      #return(NaN)
    #}
  }
  sapply(1:id.num,SingleCorr)
  return(result)
}
