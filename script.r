#This is a comment
age <- c(10, 12, 11, 12.5, 11, 12.25)

#To identify outliers
boxplot(age)

#read from a file
#$ specifies column
tran <- read.table("C:\\student\\data.txt", header=TRUE)

#Opens new window
x11()
plot(tran$transactions, type="b")