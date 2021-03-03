#Lab 05
#Samantha Williams
#PART I

#problem 1, creating a variable and assessing with an if-else statement if the variable is larger than 5
x <- 12 #no magic numbers
threshold <- 5 # no magic numbers
if ( x > threshold ) {
    print(paste("x is larger than", threshold)) #only happens if statement is true, paste combines statement and threshold
} else {
    print(paste("x is smaller than or equal to", threshold)) #only happens if statement is false
} 

#problem 2, imported the example data via the file tab, make it a vector
lab5vector <- ExampleData$x #assingn the x column of a data frame to a variable making it a vector

#2a, using a for loop, write code that checks each value in the imported data and changes every negative value to be NA
threshold <- 0 #no magic numbers
for ( i in 1:length(lab5vector)) { 
    if ( lab5vector[i] < threshold ) {
        lab5vector[i] <- NA
    }
}

#2b, use vectorized code to change NA values to NaN
lab5vector[is.na(lab5vector)] <- NaN

#2c, use a which statement and integer indexing to change NaN values to 0
lab5vector[which(is.nan(lab5vector))] <- 0 

#2d, use code to determine how many values from the data fall between 50 and 100
sum(lab5vector >= 50 & lab5vector <= 100) #take the sum of values in the vector that are greater than and equal to 50 and less than or equal to 100

#2e, use any method to create a new vector of data that has all the values between 50 and 100
FiftyToOneHundred <- lab5vector[lab5vector >= 50 & lab5vector <= 100]
print(FiftyToOneHundred)

#2f, use write.csv to save your vector to a file named FiftyToOneHundred.csv
write.csv( x= FiftyToOneHundred, file = "FiftyToOneHundred.csv")

#3 Import data on CO2 emissions from last weeks lab
co2Data <- read.csv("C:/Users/sami/Documents/ebio4420/compbiosandbox/CompBio_on_git/Labs/Lab04/CO2_data_cut_paste.csv")

#3a, what was the first year for which data on Gas emissions were non-zero
threshold <- 0
yearsAboveZeroGas <- which(co2Data$Gas > threshold)
co2Data$Year[yearsAboveZeroGas[1]]

#3b, during which years were "Total" emissions between 200 and 300 million metric tons of carbon?
emissPosition<- which(co2Data$Total < 300 & co2Data$Total > 200)
print(emissPosition)
years <- co2Data$Year[emissPosition]
print(years)

#Part II, model Lotka-Volterra predator prey model
totalGenerations <- 1000 #total timestep for model
nInit <- 100 	# initial prey abundance at time t = 1
pInit <- 10		# initial predator abundance at time t = 1
a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators
n <- rep(nInit, totalGenerations) #rep nInit in preallocation, number will fill in the  loop
p <- rep(pInit, totalGenerations) #same as above

for (t in 2:totalGenerations) { #start with gen 2 because first one is filled
    n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
    p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])
    if (n[t] < 0) {
        n[t] <- 0
    }
}

plot(1:totalGenerations, n, type="l") #plot all generations of the prey first because they have larger abundance, make it a line plot
lines(1:totalGenerations, p, type = "l") #add predators to the graph

#6, create a matrix of your results named myResults
time <- c(1:1000)
myResults <- matrix(c(time, n, p), ncol = 3)
myResults
coln <- c( "Timestep", "PreyAbundance", "Predatorbundance")
colnames(myResults) <- coln
myResults

#6b, write matrix into your Lab 5 working direcotry
write.csv( x = myResults, file = "PredPreyResults.csv")

