table2 = read.csv("Data2.csv", header = T, sep = ",")
feature=names(table2)
num.feature = ncol(table2)
i=2

Mean.table2=vector(length=num.feature-1)
Variance.table2=vector(length=num.feature-1)
while(i <= num.feature){
  Mean.table2[i-1] = mean(table2[[i]],na.rm=TRUE)
  Variance.table2[i-1] = var(table2[[i]],na.rm=TRUE)
  i = i + 1
}
print("----------------------------------------------------------------------------------")
print("Subject-wise mean, variance and standard deviation in file 2")
i=2
while(i <= num.feature){
  print(paste("Mean of Sub[",i-1,"] : ", Mean.table2[i-1]))
  i=i+1
}
cat("\n")
i=2
while(i <= num.feature){
  print(paste("Variance of Sub[",i-1,"] : ", Variance.table2[i-1]))
  i=i+1
}
cat("\n")
i=2
while(i <= num.feature){
  print(paste("Standard deviation of Sub[",i-1,"] : ", sqrt(Variance.table2[i-1])))
  i=i+1
}
cat("\n")
sort.mean = sort(Mean.table2)
print(paste("Median of mean values ",median(sort.mean)))
cat("\n")
print(paste("Mean of variances",mean(Variance.table2)))
print("----------------------------------------------------------------------------------")

print("Student-wise mean, variance and standard deviation in fiel 1")
num.row=nrow(table2)
Mean.table2=vector(length=num.row)
Variance.table2=vector(length=num.row)

i=1
while(i <= num.row){
  Mean.table2[i]=mean(unlist(table2[i,2:num.feature]),na.rm = TRUE)
  Variance.table2[i]=var(unlist(table2[i,2:num.feature]),na.rm = TRUE)
  i = i + 1
}

i=1
while(i <= num.row){
  print(paste("Mean of Student[",i,"] : ", Mean.table2[i]))
  i=i+1
}
cat("\n")
i=1
while(i <= num.row){
  print(paste("Variance of Student[",i,"] : ", Variance.table2[i]))
  i=i+1
}
cat("\n")
i=1
while(i <= num.row){
  print(paste("Standard deviation of Student[",i,"] : ", sqrt(Variance.table2[i])))
  i=i+1
}
cat("\n")
print(paste("Mean of variances: ",mean(Variance.table2)))
print("--------------------------------------------------------------------------------")






