#Group: DA-40
#Group members: Arpan Agarwal (13MA20012)
#Priyank Yadav (13MA20031)
#Neeraj Bhukania (13MA20025)
#Harsht Khandelwal (13MA20051)
#Ravi kumar Choudhary (13MA20033)


m <- 10000 #number of samples
n <- 16 #size of each sample
p <- 0.7 #probability of success

binom <- rbinom(m*n, n, p)

binom.mat <- matrix(binom, nrow = m)

samplemeans <- apply(binom.mat, 1, mean)

samplevar <- apply(binom.mat, 1, var)

hist(samplemeans, main = "Histogram for Sample Mean", border = "blue", col = "blue")

hist(samplevar, main = "Histogram for Sample Variance", border = "blue", col = "blue")
