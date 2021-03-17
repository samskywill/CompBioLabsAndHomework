#Williams_Lab08
#EBIO 4420
#March 16 2021

#3a, recall the logistic growth equation from lab 4
K2 <- 10000 #carrying capacity
r2 <- 0.8 #intrinsic growth rate
time <- c(1:12) #time steps 1-12
n2 <- 2500 #initial population
abundance <- rep (0,12) #empty vector for 12 abundance values
for (i in time) {
    n2 <- n2 + ( r2 * n2 * (K2 - n2)/K2)
    print(n2)
    abundance [i] <- n2 #assign the values of n2 in the loop to the ith values in abundance
}

plot(time, abundance) #plot time vs. abundance 

#####################################################
#3b, turn the logistic growth model into a function tha takes r, K, the total number of generations, and the initial population size into its arguments

logGrowth <- function(r,K, g,n) {
    #create a function that has 4 arguments (r,K,g,n) that are equivalent to intrinsic growth rate, carrying capacity, number of generations, and initial abundance
    abundance <- rep(n, g)
    #pre-allocate a vector for abundance that starts with n and is the length of generations
    time <- 1:g
    #create a time vector that starts at 1 and ends with the last generation
    for (t in 2:g) {
        #start with the iteration at time 2, given initial abundance is equal to n
        n <- n + ( r * n * (K - n)/K)
        #equation for calculating logistic growht
        print(n)
        #print out results of n to insure the function is working properly
        abundance [t] <- n 
        #fill each iteration of n at t into the abundance vector
    }
    
#3c, add code to the function so that it produces a plot of data that generates abundance vs. time
    plot(time, abundance)
        #plot time and abundance against eachother 
    generationAbundance <- data.frame(1:g, abundance)
    #combine the time and abundance vectors into a data frame and assign them a value
    write.csv(generationAbundance,
              "Lab08_timeAbundance.csv", 
              #export the assigned data frame to a csv file
              row.names = FALSE)
    #make row names false in order to get rid of the first numbered column
}

###3d, write a line of code that calls the function, and choose the parameters
logGrowth(0.6, 20000, 16, 3000)

###3e, written above is included how to export data to a csv for this lab
