#Group: DA-40

#Group members: Arpan Agarwal (13MA20012)
#Priyank Yadav (13MA20031)
#Neeraj Bhukania (13MA20025)
#Harsht Khandelwal (13MA20051)
#Ravi kumar Choudhary (13MA20033)

m <- 10000 #number of samples
n <- 16 #size of each sample

lmda = 3

pois <- rpois(m*n, lambda = lmda)

pois.mat <- matrix(pois, nrow = m)

samplemeans <- apply(pois.mat, 1, mean)

samplevar <- apply(pois.mat, 1, var)

hist(samplemeans, main = "Histogram for Sample Mean", border = "blue", col = "blue")

hist(samplevar, main = "Histogram for Sample Variance", border = "blue", col = "blue")