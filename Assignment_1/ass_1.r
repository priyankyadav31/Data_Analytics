table1 = read.csv("Data1.csv", header = T, sep = ",")
feature=names(table1)
num.feature = ncol(table1)
i=2

Mean.table1=vector(length=num.feature-1)
Variance.table1=vector(length=num.feature-1)
while(i <= num.feature){
  Mean.table1[i-1]=mean(table1[[i]])
  Variance.table1[i-1]=var(table1[[i]])
  i = i + 1
}
print("----------------------------------------------------------------------------------")
print("Subject-wise mean, variance and standard deviation in file 1")
i=2
while(i <= num.feature){
  print(paste("Mean of Sub[",i-1,"] : ", Mean.table1[i-1]))
  i=i+1
}
cat("\n")
i=2
while(i <= num.feature){
  print(paste("Variance of Sub[",i-1,"] : ", Variance.table1[i-1]))
  i=i+1
}
cat("\n")
i=2
while(i <= num.feature){
  print(paste("Standard deviation of Sub[",i-1,"] : ", sqrt(Variance.table1[i-1])))
  i=i+1
}
cat("\n")
sort.mean = sort(Mean.table1)
print(paste("Median of mean values ",median(sort.mean)))
cat("\n")
print(paste("Mean of variances",mean(Variance.table1)))
print("----------------------------------------------------------------------------------")


print("Student-wise mean, variance and standard deviation in fiel 1")
num.row=nrow(table1)
Mean.table1=vector(length=num.row)
Variance.table1=vector(length=num.row)

i=1
while(i <= num.row){
  Mean.table1[i]=mean(unlist(table1[i,2:num.feature]))
  Variance.table1[i]=var(unlist(table1[i,2:num.feature]))
  i = i + 1
}

i=1
while(i <= num.row){
  print(paste("Mean of Student[",i,"] : ", Mean.table1[i]))
  i=i+1
}
cat("\n")
i=1
while(i <= num.row){
  print(paste("Variance of Student[",i,"] : ", Variance.table1[i]))
  i=i+1
}
cat("\n")
i=1
while(i <= num.row){
  print(paste("Standard deviation of Student[",i,"] : ", sqrt(Variance.table1[i])))
  i=i+1
}
cat("\n")
print(paste("Mean of variances: ",mean(Variance.table1)))

print("--------------------------------------------------------------------------------")




