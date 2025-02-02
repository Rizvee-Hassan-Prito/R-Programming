text1 <- "R is"
text2 <- "awesome"
print(text1)
paste(text1, text2)

# Assign the same value to multiple variables in one line
var1 <- var2 <- var3 <- "Same Value"

# Print variable values
var1
var2
var3

x <- 9i + 3
class(x)
print(x)
x <- 1000L
class(x)
print(x)
x <- TRUE
class(x)
print(x)

x <- 1L # integer
y <- 2 # numeric

 # convert from integer to numeric:
a <- as.numeric(x)

# convert from numeric to integer:
b <- as.integer(y)
class(a)
class(b)
class(x)
class(y)
x+y

max(5, 10, 15)
ceiling(1.4)
floor(1.4)

str <- "Hello World!"

nchar(str)

str <- "Hello World!"

grepl("H", str)
grepl("Hello", str)
grepl("X", str)

str <- "We are the so-called \"Vikings\", from the north."

str
cat(str)

12%%5
12/5
12%/%5

x= 1:10
x

a <- 2123
b <- 2423

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("a is greater than b")
}

a <- 2723
b <- 2483
c <- 5433
if (a > b & c > a) {
  print("Both conditions are true")
}
if (a > b | a > c) {
  print("At least one of the conditions is true")
}

i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}

for (x in 1:10) {
  print(x/10)
}

fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  print(x)
}

adj <- list("red", "big", "tasty")

fruits <- list("apple", "banana", "cherry")
for (x in adj) {
  for (y in fruits) {
    print(paste(x, y))
  }
}

my_function <- function(x) {
  for (i in x)
  {
    if(i%%3==0)
    {
      print(i)
    }
  }
}

x<- 20:100
my_function(x)

Nested_function <- function(x, y) {
  a <- x + y
  return(a)
}

Nested_function(Nested_function(2,2), Nested_function(3,3))

Outer_func <- function(x) {
  Inner_func <- function(y) {
    a <- x + y
    return(a)
  }
  return (Inner_func)
}
output <- Outer_func(1) # To call the Outer_func
output(3)

fact<-function(n)
{
  if (n==1)
  {
    return(n)
  }
  return (n*fact(n-1))
}

fact(5)

txt <<- "global variable"
c<-"Hello"
my_function <- function() {
  txt <<- "fantastic"
  c<-"Bye"
  print(txt)
  print(c)
}

my_function()

txt
c
