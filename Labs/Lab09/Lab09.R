#Lab09
#Samantha Williams
#March 19 2021



camData <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", stringsAsFactors = F)

str(camData)

install.packages("tidyverse")

strptime(camData$DateTime, format = "")

smallVec <- camData$DateTime[1:5]

strptime(smallVec, format = '%d/%b/%Y %H:%M' )

as.POSIXct(smallVec)
as.POSIXlt(smallVec)
