#Vectors

fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits<-append(fruits,"Lemon")
length(fruits)
fruits[c(1, 3)]
fruits[2]
fruits[-1]
fruits[2:4]
fruits[2]="Jackfruit"

z<-c(2,1,3,5)
z<-z[-2]
z

numbers <- c(13, 3, 5, 7, 20, 2)
sort(numbers)

repeat_each <- rep(c(1,2,3), each = 3)
repeat_each

repeat_times <- rep(c(1,2,3), times = 3)
repeat_times

repeat_indepent <- rep(c(1,2,3), times = c(5,2,1))
repeat_indepent

numbers <- seq(from = 0, to = 100, by = 20)
numbers

Fruit_add<- function(n,f)
{
  append(n,f)
}

fr<-c()
fruits<-Fruit_add(fr,"Apple")
fruits

x<-c(3,2,1,0,6)
for (i in 1: length(x))
{
  print(x[i])
}

c1 <- c(6.5,5.2,3.1)
c2 <- c(1,2,3)
c3 <- c(c1,c2)

c3


#Lists

thislist <- list(10, 2, "apple", "banana", "cherry")

# Print the list
print(thislist)
thislist[2]
thislist[2]=5
thislist[2]<-as.character(thislist[2])
thislist[2]

"apple" %in% thislist

thislist<-append(thislist, "orange", after=1)
thislist

for(x in thislist)
{
  print(x)
}

list1 <- list("a", "b", "c")
list2 <- list(1,2,3)
list3 <- c(list1,list2)
list4 <- list(list1,list2)

length(list3)
length(list4)


# Matrices


thismatrix <- matrix(c(1, "banana", "cherry", "orange"), 
                     nrow = 2, ncol = 2)
thismatrix
thismatrix[1, 2]

thismatrix[1, 2]="pear"
thismatrix
thismatrix[2,]
thismatrix[,2]

thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"),
                     nrow = 3, ncol = 3)
thismatrix
thismatrix[c(1,2),]
thismatrix[,c(1,2)]


thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), 
                     nrow = 3, ncol = 3)

new_col_added <- cbind(thismatrix, c("strawberry", "blueberry", "raspberry"))
new_row_added <- rbind(thismatrix, c("strawberry", "blueberry", "raspberry"))

dim(thismatrix)
length(thismatrix)

for (rows in 1:nrow(thismatrix)) {
  for (columns in 1:ncol(thismatrix)) {
    print(thismatrix[rows, columns])
  }
}

Matrix1 <- matrix(c(1,2,3,4), nrow = 2, ncol = 2)
Matrix2 <- matrix(c(5,6,7,8), nrow = 2, ncol = 2)


Matrix_Row_Combined <- rbind(Matrix1, Matrix2)
Matrix_Row_Combined


Matrix_Column_Combined <- cbind(Matrix1, Matrix2)
Matrix_Column_Combined

thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), 
                     nrow = 3, ncol = 3)
thismatrix <- thismatrix[-c(-1), -c(1)]
thismatrix


