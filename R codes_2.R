

fre = c(10,12,4,1,8)
country = c("US","AUS","UK", "BD", "Pak")
#barplot(fre, names= country, col=c(1,4,3,2))
barplot(fre, names= country, col=c("skyblue2","tan","skyblue","orange3","plum3"),
        xlab="Country",ylab="Frequncy", main="Sample Barplot of Frequncy vs Country",
        horiz="T")

head(iris)
x=iris$Sepal.Length
hist(x,col = "skyblue")
y=iris$Sepal.Width
boxplot(y, col = "red")
boxplot(x,y,names=c("Sepal Length", "Sepal Width"), col=c("skyblue","red"))

x=c(10,12,14,7,18,10,30,12,15,20,11,12)
n= length(x)
sum.x= sum(x)
Mean_x=sum.x/n
median_x=median(x)
Q1= quantile(x,0.25)
Q3=quantile(x,0.75)
hist(x)
boxplot(x)
sd_x=sd(x)
vriance_x=var(x)

LF= Q1 - 1.5*(Q3-Q1)
UF= Q3 + 1.5*(Q3-Q1)

which(x>UF)
which(x<LF)

summary(x)
