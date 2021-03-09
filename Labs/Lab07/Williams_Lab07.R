#Lab 7
#Samantha Williams
#March 5 2021


#######################

#PROBLEM 1, write a fxn names triangleArea that calculates and returns the area of a triangle when given base and height (arguments)

triangleArea <- function (b, h) {
    #base and height value must be given
    #multiply b and h by 0.5
    #assign that value to the variable "area"
    area <- 0.5 * b * h
    return(area)
}

#TEST case to the fxns usage
triangleArea(10,9) #RESULT = 45

#################

#PROBLEM 2, write a fxn that calculates and returns absolute values, show the fxn works by using it on the following cases
myAbs <- function (n) {
    #one variable must be given to calculate abs value for said variable
    #calculate absolute value by taking the square root of n squared
    absvalue <- sqrt(n^2)
    return(absvalue)
}

#TEST on individual numbers
myAbs(5) #RESULT = 5
myAbs(-2.3) #RESULT = 2.3

#TEST on a vector
sampleVec <- c(1.1, 2, 0, -4.3, 9, -12)
myAbs(sampleVec) #RESULT = 1.1, 2.0, 0.0, 4.3, 9.0, 12.0

################

#PROBLEM 3, write a fxn that returns a vector of the first n Fibonacci numbers, where n is any integer >= 3. There should be two arguments: users desired value of n and the users desired starting number (either 0 or 1)


fibonacci <- function (n, s){
    #n (length of vector) must be given, and s (starting number) must be given
    fibVec <- rep(NA, n) #preallocate a vector to fill
    fibVec [1] <- s #the 1st position in the vector will be s
    if ( s == 0) { #an if else statement in which if s=0, then the 2nd position in the vector will be 1, if it is not 0, the 2nd position will be equal to s
        fibVec [2] <- s+1}
    else {
        fibVec [2] <- s
    }
    for (i in 3:n) { #a for loop starting from the 3rd position to position n (the first two positions are filled)
        fibVec [i] <- fibVec[i-1] + fibVec [i-2]
    }
    print(fibVec)
}

#TEST on two arguments

fibonacci(14, 1) #RESULT = 1   1   2   3   5   8  13  21  34  55  89 144 233 377

##############################

#PROBLEM 4a, write a fxn that takes two numbers as its arguments and returns the square of the difference between them

squareDif <- function(x,y) {
    #two numbers x and y must be given
    squareDifResult <- (x-y)^2
    #the difference between x and y is squared
    return(squareDifResult)
}    

#TEST on calling with numbers 3 and 5
squareDif(3,5) #RESULT = 4

#TEST on a vector where second argument is 4
squareDifVec <- c(2,4,6)
squareDif(squareDifVec, 4) #RESULT = 4 0 4

#############################################

#PROBLEM 4b, imagine that R did not have a function to calculate the average of a vector. Write a fxn of your own that calculates the average of a vector

vecAvg <- function(x) {
    #a vector x must be given
    vecAvgResult <- sum(x)/length(x)
    #the result is the sum of all values of the vector divided by the length of the vector
    return(vecAvgResult)
}

#TEST on a short vector
vec <- c(5,15,10)
vecAvg(vec) #RESULT = 10

#TEST on the data for lab 7
Lab7Data <- DataForLab07$x #data imported into R directly
vecAvg(Lab7Data) #RESULT = 108.9457

############################################

#PROBLEM 4c, create a sum of squares function where a vector can be used

SOS <- function(x) {
    #a vector x must be given
    SOSResult <- sum ( ( x - mean(x) ) ^ 2)
    #the operation will take the sum of each value of the vector minus the mean of the vector, squared 
    return(SOSResult)
}

#TEST on Lab7Data vector
SOS(Lab7Data) #RESULT = 179442.4    
    
