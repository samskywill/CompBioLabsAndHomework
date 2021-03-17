


> Written with [StackEdit](https://stackedit.io/).
> ### A Function for Modeling Logistic Growth with Carrying Capacity
> This function gives one the ability to model logistic growth with a carrying capacity when they input the  
>  * intrinsic growth rate ( r )  
> * carrying capacity ( K )  
> * number of generations ( g )
> * and initial population ( n )

>#### The Script Explained
>1. **logGrowth <- function( r , K , g , n ) {**
	>This line assigns the function with the parameter values in parenthesis, to the function "logGrowth."
	 _The variable meanings are listed in the section above._
>2. **abundance <- rep( n ,  g )**
	> Pre-allocates a vector to the abundance values we will fill with a four loop below. 
	_Notice how the vector starts with the initial population ( n ), because it is the first value in our abundance vector. The vector will be the length of the number of generations ( g )._
>3. **time <- 1:g**
	>Time is going to be one of the values we end up plotting against abundance. 
	_Notice how the value is one through the value of g, given our time is equal to our generations._
>4. **for (t in 2:g) {**
	>Here we start the beginning of our for-loop. The indexing variable "t" will be used, and the _first iteration of the for-loop will start at the second position, given our first  abundance value is "n"._ 
>5.   **n <- n + ( r * n * (K - n)/K)**
	> This is the model of logistic growth we will be using in the for-loop
>6. **print(n)**
	>This line is used to clarify the results of the data, to make sure the function is operating correctly.
>7.  **abundance [t] <- n 
    }**
	>Have every iteration of "n" at "t" saved to the abundance vector we pre-allocated. 
	_The for-loop part of the function is now complete_
>8. **plot(time, abundance)**
	>This will plot out vector time, and the filled vector of abundance, giving us an image that plots abundance on the y-axis, and time on the x-axis. 
>9. **generationAbundance <- data.frame(1:g, abundance)**
	> This creates a data.frame with two columns: the generations vector and the abundance vector. It is then assigned to the object generationAbundance
>10. **write.csv(generationAbundance,   "Lab08_generationAbundance.csv", row.names = FALSE)
}**
	This writes our data frame "generationAbundance" to a csv file that is now available in the directory. The csv will be called "Lab08_generationAbundance.csv" and I switched the row.names to F, in order to get rid of the extraneous column that R includes as a default. 
> 11.** Try the code yourself!**
> 

>#### What does the code do?
	>The graph will plot abundance for each time step (or generation). It is shown in the model that the population will grow at a certain rate given the intrinsic growth rate, but that rate will decrease as it starts to reach carrying capacity.   
> #### Specific Data in the File
	> The data written into the file were prompted by the command **logGrowth(0.6, 20000, 16, 3000)**. In this example, r = 0.6, K = 20,000, g = 16, and n=3000. 
		
