# Part A ####
houseMates <- c(8,14,16,10,11)

# a. Compute the mean of this population. 
popMean <- mean(houseMates)
popMean

popSD <- sd(houseMates)
popSD

# b. Select a random sample of size 2 out of the five members.
rSampleDF <- data.frame()
for(i in 1:5) {
  Sample <- sample(houseMates, 2)
  rSampleDF <- rbind(rSampleDF, Sample)
}
rSampleDF

# c. Compute the mean and standard deviation of your sample.
sampleMeanList <- list()
sampleSDList <- list()
sampleErrorList <- list()
for (i in 1:5) {
  v <- c(rSampleDF[i,1], rSampleDF[i,2])
  sampleMean <- mean(v)
  sampleSD <- sd(v)
  sampleError <- sampleSD / sqrt(2)
  sampleMeanList <- append(sampleMeanList, sampleMean)
  sampleSDList <- append(sampleSDList, sampleSD)
  sampleErrorList <- append(sampleErrorList, sampleError)
}

# d. Compare the Mean and Standard deviation of your sample to the entire 
# population of this set (8,14, 16, 10, 11).
# popMean - rSampleMean
# popSD - rSampleSD

