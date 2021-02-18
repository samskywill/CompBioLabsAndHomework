#Samantha Williams
#Lab 04

#PART I

#problem 1, write a for loop that prints the word hi to the console 10 times
iterations <- 10 #number of times I want hi to print -- no magic #'s
for (hi in 1:iterations) { #hi prints the amount of iterations (10)
    print("hi")
}

#problem2, loops total amount of tim's money after 8 weeks
piggybank <- 10 #dollars
allowance <- 5 #dollars per week
gumCost <- 2 * 1.34 #cost two packs gum per week 
weeks <- 8 #relevant time frame
for (i in 1:weeks) {
    piggybank <- piggybank + allowance - gumCost #equation showing tim's expenses and allowance
    print ( piggybank ) #print the results for each step of the for loop
}

#problem 3, modeling a population of 2000 that shrinks by 5% a year, for 7 years
n <- 2000 #initial population
rate <- 0.05 #rate of shrinking
years <- 7 #relevant time frame
for (i in 1:years) {
    n <- n - n * rate #K is equal to pop minus shrinking rate
    print ( n )
}

#problem 4, models population abundance over 12 time
K <- 10000 #carrying capacity
r <- 0.8 #intrinsic growth rate
t <- 12 #time value
n <- 2500 #initial population
for (i in 1:t) {
    n <- n + ( r * n * (K - n)/K)
    print ( n )
}

#PART II

#problem 5, make an empty vector of 18 0's
n <- 18 #no magic numbers
vector1 <- rep (0, n) #use rep command to make a vector of 18 0's

#5b, for loop that takes the vector above, and fills it with an iteration that is the value before it multiplied by 3
for (i in seq(1,18)) {
    vector1[i] <- i*3 #for the ith position in vector1, the number is the position value multiplied by 3
    print (vector1) #print each step to make sure the loop ran correctly
}
print(vector1) #print final vector

#5c, makes a vector of 18 zeros, and then replace the first entry of that vector with a 1
vector2 <- rep (0,n) #repeat zero n times, save to a vector
vector2 [1] <- 1 # take the first position of vector 2 and make it a 1
vector2 #look at vector2

#5d, store iterations in the vector above with values that are (1 + 2x) the previous entry
for (i in seq(2,18)) { #start with the second entry in the vector because the first is filled
    vector2 [i] <- 1 + (2 * vector2[i-1] ) #foor every ith position in vector 2, the entry is 1+ (2*the position before in the vector)
    print(vector2) #print all steps to make sure the vector was done correctly
}
print(vector2) #print last step of vector

#6, use a for loop to make the fibonacci sequence, in which each iteration is the two before it added together 
x <- 20 #no magic numbers
fibonacci <- rep(0,x) #make a vector with 20 0's
fibonacci [2] <- 1 #make the second entry in the vector a 1
for (i in seq(3,20)) { #start with the 3rd iteration bc the first two are complete
    fibonacci [i] <- fibonacci[i-1] + fibonacci [i-2] 
}
print (fibonacci) #look at the vector

#problem 4 revised, storing time and abundance data to plot later
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


 