#Reading from a Flat File into a vector
list.files('./data2')
data=scan("./data2")

#CSV read from CSV
#First Create as CSV file from iris data set
head(iris)
?iris
write.csv(iris,"./data/iris.csv", row,names=F)
#goto folder data and see iris.csv

read1=read.csv(file="./data/iris.csv",header=TRUE, sep=",'")

