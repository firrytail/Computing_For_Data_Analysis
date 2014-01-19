data<-read.csv("hw1_data.csv")
data

# question 1: 
str(data)

# question 2:Extract the first 2 rows of the data frame and 
#print them to the console. What does the output look like?
data[1:2,]

# question 3:How many observations (i.e. rows) are in this data frame?
data.rows <- dim(data)[1]
data.rows

# question 4: Extract the last 2 rows of the data frame and print 
# them to the console. What does the output look like
data[(data.rows-1):data.rows,]

# question 5: What is the value of Ozone in the 47th row?
data[47,]

#question 6: How many missing values are in the Ozone column of this data frame?
bad<-is.na(data["Ozone"])
Ozone<-data["Ozone"]
missing<-Ozone[bad]
length(missing)

# question 7
mean(Ozone[!bad])

#Question 8
sub1<-subset(data,Ozone>31&Temp>90)
sub1
sub1.Solar.R <- sub1$Solar.R
sub1.Solar.R.Mean <- mean(sub1.Solar.R)
sub1.Solar.R.Mean

# Question 9
sub2<- subset(data,Month == 6)
sub2.Temp<-sub2$Temp
sub2.Temp.mean <- mean(sub2.Temp)
sub2.Temp.mean

# Question 10
sub3<-subset(data,Month == 5)
sub3.Ozone <- sub3$Ozone
sub3.Ozone.max <- sub3.Ozone[which.max(sub3.Ozone)]
sub3.Ozone.max


