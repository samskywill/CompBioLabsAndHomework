#Set to appropriate working directory
setwd("~/ebio4420/CompBioLabsAndHomework/FinalProject/")

#Load data
syria <- read.csv("syriaData.csv", stringsAsFactors = F)

#Get rid of rows of NA's
syriaNoNA <- syria[rowSums(is.na(syria)) != ncol(syria),]

#Get rid of the individuals whose genders are "unknown" in the data set
syriaBoyGirl = filter(syriaNoNA, gender != "2") 

#There is a column that was typed as "vacc-UTD" so we must change the hyphen to an underscore
colnames(syriaBoyGirl)[19] <- "vacc_UTD"

#This is the vector that will notate the breaks I need to specify for the y-axis
brks <- c(0, 0.25, 0.5, 0.75, 1)

#load dplyr, ggupbr do assemble the graphs, and ggplot2 to make the graphs
library(dplyr)
library(ggpubr)
library(ggplot2)

#############DISCLAIMER################
#The code below for all the graphs is relatively the same
#Things that change periodically are:
#The levels of the filling variable
#The colors
#The labels and titles
#The names of the grouped plots and the inputs for them






################################################################################
#########################NUTRITION##############################################
################################################################################
availNutrGraph <- ggplot(syriaBoyGirl, #make the ggplot out of my final data frame "syriaBoyGirl"
                aes(x=factor(gender), #set the x-axis to be by the factored version of "gender, so it has 2 levels
                fill = factor(nutr_avail, levels = c("2", "0", "1")))) + #make the fill for the graph the different factors of survey answers for the given graph
                scale_fill_manual(values = c("black", "seagreen3", "seagreen4"), #I decided to make the colors for these graphs green, representing nutrition
                                  labels = c("Unknown", "Not Available", "Available")) + #there are three levels of labels for available nutrition, which can be found in the original dataset
  labs (fill = "Availabilty of Nutrition") + #make sure the title of the key represents the data
  geom_bar(position = "fill") + #change the position  to "fill" in order to show the data in a percentage, instead of "count"
  scale_y_continuous(labels = scales::percent(brks)) + #make the y-axis continuous in order to denote 0-100%
  scale_x_discrete(labels = c("Girl", "Boy")) + #make the x-axis labels denote the correct gender for each bar
  xlab("Gender") + #the x axis for all the graphs will be "gender"
  ylab("Percent") + #the y axis for all graphs will be "percent"
  ggtitle(("Percent of Girls and Boys with Available Nutrition")) + #denote an appropriate title for each graph
  theme(plot.title = element_text(hjust = 0.5)) #make the plot title centered for each graph

nutrSafeGraph <- ggplot(syriaBoyGirl,
                   aes(x=factor(gender),
                       fill = factor(nutr_safe, levels = c("2", "0", "1")))) +
  scale_fill_manual(values = c("black", "seagreen3", "seagreen4"),
                    labels = c("Unknown", "Not Available", "Available")) +
  labs (fill = "Availabilty of Safe Nutrition") +
  geom_bar(position = "fill") +
  scale_x_discrete(labels = c("Girl", "Boy")) +
  scale_y_continuous(labels = scales::percent(brks)) +
  xlab ("Gender") +
  ylab ("Percent") +
  ggtitle("Percent of Girls and Boys with Safe Nutrition") +
  theme(plot.title = element_text(hjust = 0.5))

clinMalnGraph <- ggplot(syriaBoyGirl,
                   aes(x=factor(gender),
                       fill = factor(clin_maln, levels = c("2", "0", "1")))) +
  scale_fill_manual(values = c("black", "seagreen3", "seagreen4"),
                    labels = c("Unknown Nutrition State", "No", "Yes")) +
  labs (fill = "Clinical Signs of Malnutrition") +
  geom_bar(position = "fill")+
  scale_y_continuous(labels = scales::percent(brks)) +
  scale_x_discrete(labels=c("Girl", "Boy")) +
  xlab ("Gender") +
  ylab ("Percent") +
  ggtitle("Percent of Girls and Boys with Clinical Signs of Malnutrition") +
  theme(plot.title = element_text(hjust = 0.5))

ggarrange (availNutrGraph, #arrange the plots for the given indicator of health according to 
           ggarrange (nutrSafeGraph, clinMalnGraph,
           nrow = 2)
           )




################################################################################
##############WATER AND SANITATION##############################################
################################################################################

safeWater <- ggplot(syriaBoyGirl,
                   aes(x=factor(gender),
                       fill = factor(Safe_water, levels = c("2", "0", "1")))) +
  scale_fill_manual(values = c("black", "deepskyblue1", "deepskyblue4"),
                    labels = c("Unknown", "Not Available", "Available")) +
  labs (fill = "Availabilty of Safe Water") +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent(brks)) +
  scale_x_discrete(breaks=c("0","1"),
                  labels=c("Girl", "Boy")) +
  xlab ("Gender") +
  ylab ("Percent") +
  ggtitle("Percent of Girls and Boys with Access to Safe Water") +
  theme(plot.title = element_text(hjust = 0.5))
safeWater

apprSanit <- ggplot(syriaBoyGirl,
       aes(x=factor(gender),
           fill = factor(Appr_sanit, levels = c("2", "0", "1")))) +
  scale_fill_manual(values = c("black", "gold4", "gold"),
                    labels = c("Unknown", "Not Available", "Available")) +
  labs (fill = "Availabilty of 
Appropriate Sanitation") +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent(brks)) +
  scale_x_discrete(labels=c("Girl", "Boy")) +
  xlab ("Gender") +
  ylab ("Percent") +
  ggtitle("Percent of Girls and Boys with Access to Appropriate Sanitation") +
  theme(plot.title = element_text(hjust = 0.5))
apprSanit

waterAndSanit <- ggarrange (safeWater, apprSanit,
                      ncol = 2)
waterAndSanit






################################################################################
#########################BREASTFEEDING##########################################
################################################################################

breastFGraph <- ggplot(syriaBoyGirl,
                    aes(x=factor(gender),
                        fill = factor(breastF, levels = c("2", "0", "1")))) +
  scale_fill_manual(values = c("black", "cornsilk3", "cornsilk"),
                    labels = c("Unknown", "Not Available", "Available")) +
  labs (fill = "If Breastfeeding, 
Feeder Available") +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent(brks)) +
  scale_x_discrete(labels=c("Girl", "Boy")) +
  xlab ("Gender") +
  ylab ("Percent") +
  ggtitle("Percent of Girls and Boys with a Feeder for Breastfeeding") +
  theme(plot.title = element_text(hjust = 0.5))
breastFGraph

artifFGraph <- ggplot(syriaBoyGirl,
                  aes(x=factor(gender),
                      fill = factor(artifF, levels = c("2", "0", "1")))) +
  scale_fill_manual(values = c("black", "cornsilk3", "cornsilk"),
                    labels = c("Unknown", "Not Available", "Available")) +
  labs (fill = "If Artifical Feeding, 
Source Available") +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent(brks)) +
  scale_x_discrete(labels=c("Girl", "Boy")) +
  xlab ("Gender") +
  ylab ("Percent") +
  ggtitle ("Percent of Girls and Boys with a Source for Artifical Feeding") +
  theme (plot.title = element_text(hjust = 0.5))
artifFGraph

breastFPlots <- ggarrange (breastFGraph, artifFGraph,
           ncol = 2)
breastFPlots






################################################################################
#########################HEALTHCARE#############################################
################################################################################

spec_HC_provGraph <- ggplot(syriaBoyGirl,
                 aes(x=factor(gender),
                     fill = factor(spec_HC_prov, levels = c("2", "0", "1")))) +
  scale_fill_manual(values = c("black", "darkorchid1", "darkorchid4"),
                    labels = c("Unknown", "Not Available", "Available")) +
  labs (fill = "Pediatric Healthcare 
  Provider Available") +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent(brks)) +
  scale_x_discrete(labels=c("Girl", "Boy")) +
  xlab ("Gender") +
  ylab ("Percent") +
  ggtitle ("Percent of Girls and Boys with Access to a Pediatrician") +
  theme (plot.title = element_text(hjust = 0.5))
spec_HC_provGraph

HC_prov_sortGraph <- ggplot(syriaBoyGirl,
                            aes(x=factor(gender),
                                fill = factor(HC_prov_sort, levels = c("0", "3", "1", "2")))) +
  scale_fill_manual(values = c("black", "magenta", "magenta2", "magenta3"),
                    labels = c("Healthcare Unavailable", "Relief Hospital", "Provided by Regime", "Private Healthcare Provider")) +
  labs (fill = "Healthcare Provided By") +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent(brks)) +
  scale_x_discrete(labels=c("Girl", "Boy")) +
  xlab ("Gender") +
  ylab ("Percent") +
  ggtitle ("Percent of Girls and Boys with a Certain Healthcare Provider") +
  theme (plot.title = element_text(hjust = 0.5))
HC_prov_sortGraph

healthcarePlots <- ggarrange (spec_HC_provGraph, HC_prov_sortGraph,
           ncol = 2)
healthcarePlots





################################################################################
#########################VACCINES##############################################
################################################################################

vacc_availGraph <- ggplot(syriaBoyGirl,
                            aes(x=factor(gender),
                                fill = factor(vacc_avail, levels = c("2", "0", "1")))) +
  scale_fill_manual(values = c("black", "darkorange", "darkorange3"),
                    labels = c("Unknown", "Not Available", "Available")) +
  labs (fill = "Vaccines Available") +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent(brks)) +
  scale_x_discrete(labels=c("Girl", "Boy")) +
  xlab ("Gender") +
  ylab ("Percent") +
  ggtitle ("Percent of Girls and Boys with Vaccine Availability") +
  theme (plot.title = element_text(hjust = 0.5))
vacc_availGraph

vacc_complGraph <- ggplot(syriaBoyGirl,
                          aes(x=factor(gender),
                              fill = factor(vacc_compl, levels = c("2", "0", "1")))) +
  scale_fill_manual(values = c("black", "darkorange", "darkorange3"),
                    labels = c("Unknown", "No", "Yes")) +
  labs (fill = "Vaccination State Completed") +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent(brks)) +
  scale_x_discrete(labels=c("Girl", "Boy")) +
  xlab ("Gender") +
  ylab ("Percent") +
  ggtitle ("Percent of Girls and Boys with Vaccine State Completed") +
  theme (plot.title = element_text(hjust = 0.5))
vacc_complGraph

vacc_UTDGraph <- ggplot(syriaBoyGirl,
                          aes(x=factor(gender),
                              fill = factor(vacc_UTD, levels = c("2", "0", "1")))) +
  scale_fill_manual(values = c("black", "darkorange", "darkorange3"),
                    labels = c("Unknown", "No", "Yes")) +
  labs (fill = "Vaccination State Up To Date") +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent(brks)) +
  scale_x_discrete(labels=c("Girl", "Boy")) +
  xlab ("Gender") +
  ylab ("Percent") +
  ggtitle ("Percent of Girls and Boys with Vaccine State Up To Date") +
  theme (plot.title = element_text(hjust = 0.5))
vacc_UTDGraph

vacc_missGraph <- ggplot(syriaBoyGirl,
                        aes(x=factor(gender),
                            fill = factor(vacc_miss, levels = c("2", "0", "1")))) +
  scale_fill_manual(values = c("black", "darkorange", "darkorange3"),
                    labels = c("Unknown", "No", "Yes")) +
  labs (fill = "Vaccines Missing") +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent(brks)) +
  scale_x_discrete(labels=c("Girl", "Boy")) +
  xlab ("Gender") +
  ylab ("Percent") +
  ggtitle ("Percent of Girls and Boys with Vaccines Missing") +
  theme (plot.title = element_text(hjust = 0.5))
vacc_missGraph

vaccPlots <- ggarrange (vacc_availGraph, 
           vacc_complGraph,
           vacc_missGraph,
           vacc_UTDGraph,
           ncol = 2, 
           nrow = 2)
vaccPlots





################################################################################
#########################EDUCATION##############################################
################################################################################

rec_educGraph <- ggplot(syriaBoyGirl,
                         aes(x=factor(gender),
                             fill = factor(rec_educ, levels = c("3","2", "0", "1")))) +
  scale_fill_manual(values = c("forestgreen", "black", "firebrick1", "firebrick3"),
                    labels = c("Not Applicable (Under 6 Years Old", "Unknown", "No", "Yes")) +
  labs (fill = "Receiving Education?") +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent(brks)) +
  scale_x_discrete(labels=c("Girl", "Boy")) +
  xlab ("Gender") +
  ylab ("Percent") +
  ggtitle ("Percent of Girls and Boys Recieving Education") +
  theme (plot.title = element_text(hjust = 0.5))
rec_educGraph

educ_provGraph <- ggplot(syriaBoyGirl,
                        aes(x=factor(gender),
                            fill = factor(educ_prov, levels = c("2", "0", "1")))) +
  scale_fill_manual(values = c("black", "indianred1", "indianred3"),
                    labels = c("Unknown", "Regime", "Other")) +
  labs (fill = "Who Provides Education?") +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent(brks)) +
  scale_x_discrete(labels=c("Girl", "Boy")) +
  xlab ("Gender") +
  ylab ("Percent") +
  ggtitle ("Percent of Girls and Boys by Education Source") +
  theme (plot.title = element_text(hjust = 0.5))
educ_provGraph

educPlots <- ggarrange (rec_educGraph, 
                        educ_provGraph,
                        ncol = 2 
                        )
educPlots
