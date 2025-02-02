mydata <- c(40,42,30,32)+ c(1,2,3,4)
y<- c(2,3,4,7)
mydata+y

x <-4; y<-3
z<-6
x <- x^2+ y*z + log(z)+ exp(x) - exp(2) - x/z + (z+1)/x + sqrt(y)- abs(y-z)
signif(x,3)
round(x,3)

y <-rep(1:4,2)
y

y <-rep(1:4,each=2)
y

y <-rep(1:4,c(2,1,2,1))
y

y <-rep(1:2,2)
sum(y)
cumsum(y)

y[3]
y[2:3]

income <- c(23,54,1,2,34,55)
mean(income)

matrix(0,2,2)

objects()
ls()
rm(list=ls())


name <- c("TB","EC","ECB")
income <- c(50,32,12)
datFr<- data.frame(name,income)
 
#install.packages("readxl")
getwd()
setwd("F:/")
data <- read_xlsx(path="F:/data.xlsx")

data <- read_xlsx(file.choose())
data <- read.csv(file.choose())
