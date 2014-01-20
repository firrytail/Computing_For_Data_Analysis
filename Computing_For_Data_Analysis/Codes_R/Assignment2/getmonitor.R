getmonitor <- function(id, directory, summarize = FALSE) {
  ## 'id' is a vector of length 1 indicating the monitor ID
  ## number. The user can specify 'id' as either an integer, a
  ## character, or a numeric.
  
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'summarize' is a logical indicating whether a summary of
  ## the data should be printed to the console; the default is
  ## FALSE
  
  id.num<-as.numeric(id)
  if(id.num<10){
    id.char<-paste(c('00',as.character(id)),collapse='')
  } else if(id.num<100){
    id.char<-paste(c('0',as.character(id)),collapse='')
  }else if(id.num<1000){
    id.char<-as.character(id)
  }else {
    print('You input a invalid id,please check')
  }
file<-paste(c(directory,'/',id.char,'.csv'),collapse='' )
data<-read.csv(file)
if(summarize== TRUE ){
  print(summary(data))
}
return(data)
}

