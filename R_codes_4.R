
result <- 1 - pnorm(250,mean=200,sd=50)
result


result <- pnorm(250,mean=200,sd=50)
result

r1=pnorm(250, mean = 200, sd = 50)
r2=pnorm(150, mean = 200, sd = 50)

r3=r1-r2
r3

set.seed(123)
x<- c(rnorm(10,50,5),rnorm (2,100,5))
z<-(x-mean(x)/sd(x)) 
zrob<-(x-median(x)/mad(x)) 
boxplot(x)


data<- rnorm(100,mean=50,sd=1)

hist(data)

qqnorm(data)
qqline(data)

data<- rnorm(100,mean=50,sd=100)

hist(data)

qqnorm(data)
qqline(data)
