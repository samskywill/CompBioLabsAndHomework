


 # Children in the Syrian Civil War: A Visualization of the Data

### Biological question
How does gender influence access and use of health resources for children affected by the Syrian Civil War?

### Context
The Syrian Civil War has been an ongoing political upset that began in 2011, and has yet to end. One of the consequences of this war has been one of the most tragic humanitarian crises in history. In 2019, the WHO published a [humanitarian needs overview for Syria](https://reliefweb.int/sites/reliefweb.int/files/resources/2019_Syr_HNO_Full.pdf), and estimated that 11.7 million people are in need of humanitarian assistance as a result of the conflicts. Of the 11.7 million, it is estimated that 5 million of them are children. 

The data set I used was published in 2016, along with a paper titled ["Children in the Syrian Civil War: the Familial, Educational, and Public Health Impact of Ongoing Violence."]( https://www.cambridge.org/core/journals/disaster-medicine-and-public-health-preparedness/article/children-in-the-syrian-civil-war-the-familial-educational-and-public-health-impact-of-ongoing-violence/A7CC15D863191359990082151EC66186)

### Methods
##### The source of the data:
The [data]((https://doi.org/10.5061/dryad.73ff4)) I used was from a study where the goal was to assess the humanitarian needs of children in Syria following the escalation of the Syrian Civil War. The study was done to help develop methods of care for Syrian children who have been affected by the crisis.

A survey that you can view [here](https://www.cambridge.org/core/journals/disaster-medicine-and-public-health-preparedness/article/children-in-the-syrian-civil-war-the-familial-educational-and-public-health-impact-of-ongoing-violence/A7CC15D863191359990082151EC66186#supplementary-materials) was collected by the Qatar Red Crescent (QRC), and proper training was given to 30 data collectors chosen by the QRC and World Health Organization (WHO). Those data collectors visited homes and Internally Displaced Person camps in four Syrian governorates: Aleppo, Idleb, Hamah, and Lattakia. Data collectors either interviewed children, or parents on behalf of children who could not speak. Every child under 15 years old was able to participate in the study. The data that was collected included indicators of health, such as if the child had available nutrition, was breastfeeding, or if they had access to sanitation. 

The entire data set is made up of three components: a "dataset," a "readme," and a "problem and diagnosis list." The entire original file is 145 KB (and can be found in my repository under ["Original_Data.zip"](https://github.com/samskywill/CompBioLabsAndHomework/blob/master/FinalProject/Original_Data.zip)) . However, just the "dataset" in .csv form is 85 KB (and can be found in my repository under ["syriaData.csv"](https://github.com/samskywill/CompBioLabsAndHomework/blob/master/FinalProject/syriaData.csv)). The data set included several challenges:
* There are several rows of blank information that needed to be taken out of the data frame when loaded into R
* The column that represents "vaccination state up to date?" is labeled as "vacc-UTD" so the hyphen needs to be turned into an underscore. 
* The categorical data were all denoted in a range from 0-4, so that made it difficult when organizing the data in the correct fashion. 

##### What the original authors did with the data:
When the authors made analyses of the data, they focused on comparisons between the regions they surveyed: Aleppo, Idleb, Hamah, and Lattakia. Additionally, most of their analyses focused on total counts for their survey, rather than comparisons between age or sex. 

##### What I did with the data and how I did it:
In order to see if there were any large difference between gender in terms of their availability of resources, I focused my visualizations on separations based on gender. 
The first thing I managed to do was download the "dataset" from the original data file so I could download that data set onto R in one data frame. Following that I:
* Eliminated the bottom rows of data that contained only NA's
* Got rid of the rows of data in which two children's genders were "unknown" (denoted by a "2").
* Changed the name of one column from "vacc-UTD" to "vacc_UTD" to ensure proper analysis.
* Created a vector named "brks" that symbolized the different breaks I would have in my y-axis that would denote the percent of responses per gender. 

Once my data was prepped and ready to visualize I started to create bar graphs according to different categories based on the questions answered in the survey. The data was broken into six groups, with several graphs in that group to represent different aspects of that health indicator:
* [Nutrition](https://github.com/samskywill/CompBioLabsAndHomework/blob/master/FinalProject/nutritionGraphs.png)
	* Available nutrition
	* Safe nutrition
	* Signs of clinical malnutrition
* [Water and Sanitation](https://github.com/samskywill/CompBioLabsAndHomework/blob/master/FinalProject/waterAndSanitPlots.png)
	* Safe Water
	* Appropriate Sanitation
* [Breastfeeding](https://github.com/samskywill/CompBioLabsAndHomework/blob/master/FinalProject/breastFPlots.png)
	* Breastfeeding feeder available
	* Artificial feeder available
* [Healthcare](https://github.com/samskywill/CompBioLabsAndHomework/blob/master/FinalProject/healthcarePlots.png)
	* Pediatric healthcare provider available
	* Type of Healthcare Provider
* [Vaccines](https://github.com/samskywill/CompBioLabsAndHomework/blob/master/FinalProject/vaccPlots.png)
	* Vaccines available
	* Vaccination state completed
	* Vaccination state up-to-date
	* Vaccines missing
* [Education](https://github.com/samskywill/CompBioLabsAndHomework/blob/master/FinalProject/educPlots.png)
	* Are they receiving education?
	* Type of educator

In order to see if there were major differences in the data, I made stacked bar plots for each gender and denoted them by "Girl" or "Boy." The stacked aspects of the plots represented the answers to each survey based on gender. Most often these answers were only three levels: "unknown," "available," or "not available," but sometimes they were different. I also decided to size the plots based on percentage, rather than total count of the survey data, considering there were over 100 more boys who took the survey than girls. Once all the plots were made, they were combined with their related counterparts to create an appealing graphic.

Let it be noted that I did not include specific variables regarding chronic health problems, due to the amount of NA's in the data set under those categories. 

### Results and conclusions
I found that in most cases, the differences in availability of resources between boys and girls did not differ a lot. I decided to not do statistical analyses on any of the data considering that visually they were relatively the same. However, the data does bring up some interesting implications as to how much of an impact the Syrian Civil War has had on these children. 

For example, it is unknown if most of the children of the appropriate age are being breast-fed or artificially-fed. Most of the children are not receiving education, and it is mostly unknown where they may be receiving education from. Additionally, most of the children in the sample are not receiving healthcare. 

Additionally, it seems that most of the children in this sample are obtaining appropriate nutrition, has access to safe water, sanitation, and are receiving vaccinations. 

In conclusion, these visualizations of data show that both boys and girls have equal access to resources during this time of war, and need help equally. Aid should come the most in the form of feeding for small children, education, as well as healthcare. 

All of my visualizations can be found within the directory for my final project [here.](https://github.com/samskywill/CompBioLabsAndHomework/tree/master/FinalProject)



### References Cited
Elsafti, A., Van Berlaer, G., Al Safadi, M., Debacker, M., Buyl, R., Redwan, A., & Hubloue, I. (2016). Children in the Syrian Civil War: The Familial, Educational, and Public Health Impact of Ongoing Violence. _Disaster Medicine and Public Health Preparedness,_  _10_(6), 874-882.  [https://doi:10.1017/dmp.2016.165 ](https://www.cambridge.org/core/journals/disaster-medicine-and-public-health-preparedness/article/children-in-the-syrian-civil-war-the-familial-educational-and-public-health-impact-of-ongoing-violence/A7CC15D863191359990082151EC66186#article)

Elsafti, A., Van Berlaer, G., Al Safadi, M., Debacker, M., Buyl, R., Redwan, A., & Hubloue, I. (2017), Data from: Children in the Syrian civil war: the familial, educational, and public health impact of ongoing violence, Dryad, Dataset, [https://doi.org/10.5061/dryad.73ff4](https://doi.org/10.5061/dryad.73ff4)

World Health Organization. (2019). Humanitarian Needs Overview: Syrian Arab Republic. [https://reliefweb.int/sites/reliefweb.int/files/resources/2019_Syr_HNO_Full.pdf](https://reliefweb.int/sites/reliefweb.int/files/resources/2019_Syr_HNO_Full.pdf)
