mtcars
miles=mtcars$mpg
hist(miles)
boxplot(miles)
hist(mtcars$cyl)
barplot(table(mtcars$cyl))

count_2=table(mtcars$cyl)
pie_labels <- paste0(count_2, " cyl = ", round(100 * count_2/sum(count_2), 2), "%")
pie(count_2, labels = pie_labels)

#install.packages("ggplot2")

library("ggplot2")


# Basic Line
ggplot(data=mtcars, aes(x=gear)) +
  geom_bar()+labs(title = "Barplot",x="No of cylenders", y="frequency")


# Sample dataframe
# Load required library
library(ggplot2)

# Aggregate the data
agg_df <- aggregate(mpg ~ cyl, data = mtcars, FUN = sum)

# Create a barplot
ggplot(agg_df, aes(x = factor(cyl), y = mpg)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(x = "Number of Cylinders", y = "Sum of MPG") +
  theme_minimal()

stem(miles,scale=3)
sort(miles)

heatmap(as.matrix(scale(mtcars)))

summary(mtcars) 
quantile(miles,.25)
quantile(miles,.50)
quantile(miles,.75)
sd(miles)
var(miles)
cv<-sd(miles)/mean(miles)
meadian<-mad(miles)

z_score<-(miles-mean(miles))/sd(miles)

