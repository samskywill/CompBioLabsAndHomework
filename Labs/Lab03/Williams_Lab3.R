#Samantha Williams
#Lab 03
#Part 1

    #lab step 3

        #number of chips to start
        chipstart <- 5

        #number of guests
        guests <- 8

    #lab step #5 
            
        #average # of chip bags per guest
        chipavg <- 0.4

    #lab step #7
            
        #amount of leftover chips in bags, including myself
        leftovers <- chipstart - ((guests * chipavg) + 0.4)
    
# Part 2
            
    #lab step 8
            
        #Vectors for Star Wars rankings by person
        selfrank <- c (7,9,8,1,2,3,4,6,5)
        pennyrank <- c (5,9,8,3,1,2,4,7,6)        
        lennyrank <- c (6,5,4,9,8,7,3,2,1)
        stewierank <- c (1,9,5,6,8,7,2,3,4)        
    
    #lab step 9
        
        #index the ranking of epsiode 4 for penny and lenny
        PennyIV <- pennyrank[4]
        LennyIV <- lennyrank[4]        
    
    #lab step 10
        
        # concotenate all 4 sets of rankings into a single data            object
        allrank <- cbind (selfrank, pennyrank, lennyrank, stewierank)
    #lab step 11
        #use the str to see the data of PennyIV, pennyrank, and            allrank
        str (PennyIV)
        str (pennyrank)
        str (allrank)        
        # When looking at Penny IV, R tells me the single value of         the pobject is a numerical value of 3, pennyrank is an             object with 9 numerical values that are listed. allrank is         an object with numerical values with 9 rows and 4 columns. 
        
    #lab step 12
        # make a data frame using all the rankings
        df1 <- data.frame (selfrank, pennyrank, lennyrank, stewierank)
        df2 <- as.data.frame(allrank)
            
            #Each data frame looks the same visually, but they were all made the same. The dimensions of all of them are the same, but the structure of allrank and df1,2 are somewhat different. It seems allrank is a more complicated file, and the output of it shows more variables than df1 and 2 in which the vectors that are combined in the dataframes are listed. However, when checking to see if all values in the data frame are equal, they all show "TRUE." When looking at the object type, allrank and df2 are both listed as "double" while df1 is "list." From what I can gather, double means the way R stores the data, and it seems df1 would be stored as a list.  
        
        #checking dimensions    
        dim (allrank)
        dim (df1)        
        dim (df2) 
        
        #checking structure
        str (allrank)
        str (df1)        
        str (df2)
    
        #checking if the objects are equal
        allrank==df1
        df1==df2        
        df2=allrank        
        
        #checking what class of object each variable is
        typeof (allrank)
        typeof (df1)        
        typeof (df2) 
        
    #lab step 14
        #episodes of Star Wars listed sequentially in a vector
        episodes <- c('I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX')

    #lab step 15
        row.names (allrank) <- episodes
        row.names (df1) <- episodes        
        row.names (df2) <- episodes        

    #lab step 16
        allrank [3,]
    
    #lab step 17
        df1 [,4]
    
    #lab step 18
        allrank [5, 1]

    #lab step 19
        allrank [2,2]

    #lab step 20
        allrank [4:6, 1:4]

    #lab step 21
        allrank [c(2,5,7), 1:4]  

    #lab step 22
        allrank [c(4,6), c(2,4)]

    #lab step 23
        allrank [2,3] <- 8
        allrank [5,3] <- 5

    #lab step 24
        allrank ["III", "pennyrank"]
        df1 ["III", "pennyrank"]

    #lab step 25
        allrank ["II", "lennyrank"] <- 5
        allrank ["V", "lennyrank"] <- 8

    #lab step 26
        df1$lennyrank[2] <- 8
        df1$lennyrank[5] <- 5
        