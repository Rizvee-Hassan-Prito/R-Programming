#Solution 1
data <- read.csv(file.choose())
data <- na.omit(data)

hist(data$Income, col = "lightblue", 
     main = "Histogram of Income Variable", xlab = "Income")

qqnorm(data$Income, main = "Q-Q Plot of Income Variable")
qqline(data$Income, col="red")

shapiro.test(data$Income)
ks.test(data$Income, "pnorm", mean = mean(data$Income), sd = sd(data$Income))

#Solution 2

install.packages("BSDA")  
library(BSDA) 

z.test(data$Income, mu = 75, sigma.x = sd(data$Income), alternative = "two.sided")

#Solution 3

x <- sum(data$Personal.Loan == 1)  
n <- nrow(data)  
p_hat <- x / n  
p_0 <- 0.40  
d <- sqrt(p_0 * (1 - p_0) / n)
z_score <- (p_hat - p_0) / d
p_value <- 1 - pnorm(z_score)
cat("Z-score:", z_score, "\n")
cat("P-value:", p_value, "\n")

if (p_value < 0.05) {
  cat("Reject H0: The proportion of loan acceptances is significantly greater than 40%.\n")
} else {
  cat("Fail to reject H0: No significant evidence that the proportion is greater than 40%.\n")
}


#Solution 4

x=data$CCAvg[data$Personal.Loan == 1]
y=data$CCAvg[data$Personal.Loan == 0]
sdx=sd(data$CCAvg[data$Personal.Loan == 1])
sdy=sd(data$CCAvg[data$Personal.Loan == 0])
z.test(x, y,  
       sigma.x = sdx,
       sigma.y = sdy,mu=0,
       alternative = "two.sided")

#Solution 5

x=data$Income[data$Personal.Loan == 1]
y=data$Income[data$Personal.Loan == 0]
sdx=sd(data$Income[data$Personal.Loan == 1])
sdy=sd(data$Income[data$Personal.Loan == 0])
z.test(x, y,  
       sigma.x = sdx,
       sigma.y = sdy,mu=0,
       alternative = "two.sided")




#Solution 6


credit_card_counts <- table(data$CreditCard)


chi_test_result <- chisq.test(credit_card_counts)


print(chi_test_result)



