


> Written with [StackEdit](https://stackedit.io/).
# Children in the Syrian Civil War: A Gender-Focused Analysis
 ## Introduction
The Syrian Civil War has been an ongoing political upset that began in 2011, and has yet to end. One of the consequences of this war has been one of the most tragic humanitarian crises in history. In 2019, the WHO published a [humanitarian needs overview for Syria](https://reliefweb.int/sites/reliefweb.int/files/resources/2019_Syr_HNO_Full.pdf), and estimated that 11.7 million people are in need of humanitarian assistance as a result of the conflicts. Of the 11.7 million, it is estimated that 5 million of them are children. 

The data set I plan to use was published in 2016, along with a paper titled "Children in the Syrian Civil War: the Familial, Educational, and Public Health Impact of Ongoing Violence." My driving question for this project is, how does gender influence access and use of health resources for children affected by the Syrian Civil War?

<hr>

## Summary of the Data to be Analyzed

### Goals of the Original Study
The goals of this study were to assess the humanitarian needs of children in Syria following the escalation of the Syrian Civil War. In turn, this data may help develop methods of care for Syrian children who have been affected by the crisis. 

### Description of the Methodology
A survey that you can view [here](https://www.cambridge.org/core/journals/disaster-medicine-and-public-health-preparedness/article/children-in-the-syrian-civil-war-the-familial-educational-and-public-health-impact-of-ongoing-violence/A7CC15D863191359990082151EC66186#supplementary-materials) was collected by the Qatar Red Crescent (QRC), and proper training was given to 30 data collectors chosen by the QRC and World Health Organization (WHO). Those data collectors visited homes and Internally Displaced Person camps in four Syrian governorates: Aleppo, Idleb, Hamah, and Lattakia. Data collectors either interviewed children, or parents on behalf of children who could not speak. Every child under 15 years old was able to participate in the study. 

### Type of Data in This Set 
#### Format
* The original file is in .xlsx format
* The .xlsx file includes three tabs: the "dataset", a "readme," and a "problem and diagnosis list"
* The data set is comprised of 1002 rows of data, and 42 columns of variables
	* Each row is representative of the results of one survey
	* The columns include answers regarding surveyor information and public health indicators (e.g. governorate, access to vaccines, etc)
* The "readme" is composed of 32 rows and three columns
	* Column A is the name of each variable in the data set
	* Column B is the definition of each variable
	* Column C is the explanation for the levels of answering for each question. 
* The "problem and diagnosis list" includes a key for the numbered ratings in column 33 of the data set
	* The numbers indicate what kind of disease or disability the surveyor had at that point in time 
#### Size
* Original file including "dataset", "readme", and "problem and diagnosis list": 145 KB
* "dataset" in .csv form: 85 KB
#### Inconsistencies in the data
* When imported into R, there are multiple cases of NA's for columns 29-42, with the exception of the "Connolly" column
*  There is one survey in which displacement information is not given
* There is one survey that does not give the status of a missing DTP vaccine
* There is one survey that does not give the status of a missing HBV vaccine
* There is one survey that does not give the status of a missing TB vaccine
* There is one survey that does not give the status of a missing polio vaccine
* There are two surveys that do not provide the status of the education provider for the child

#### What the data represent about public health
This data gives a real representation of the public health effects regarding the Syrian Civil War, and how the war has affected children. This information can help organizations and governments realize what groups need to be targeted for humanitarian aid. Additionally, it may nod to the general effects that wartime may have on children as a whole. 


<hr>

##  Analysis to be done and challenges involved
My analysis of the data set will include a more in-depth look at the gender differences between the health indicators in the data set. The process for each variable will include:
* Grouping each variable by gender
* Creating visual representations for each variable according to gender
* Some relationships between a variable and gender, or differences between genders may require statistical analysis
* Grouping visual representations according to their respective section (nutrition, breastfeeding, healthcare, education, health diagnosis, vaccine, chronic problem, and miscellaneous)
### Challenges
This dataset will pose the most challenges when it comes to the absence of information for some of the surveys. As mentioned above, a large amount of the surveys do not have information when it comes to health problems, secondary diagnosis, and chronic problems. So, the analysis done for those variables may be skewed, or will have to be abandoned. 

Additionally, 61% of the surveys were done by/for boys, which means that the data will not be totally balanced in terms of the sample. 

<hr>

## References

Elsafti, A., Van Berlaer, G., Al Safadi, M., Debacker, M., Buyl, R., Redwan, A., & Hubloue, I. (2016). Children in the Syrian Civil War: The Familial, Educational, and Public Health Impact of Ongoing Violence. _Disaster Medicine and Public Health Preparedness,_  _10_(6), 874-882.  [https://doi:10.1017/dmp.2016.165 ](https://www.cambridge.org/core/journals/disaster-medicine-and-public-health-preparedness/article/children-in-the-syrian-civil-war-the-familial-educational-and-public-health-impact-of-ongoing-violence/A7CC15D863191359990082151EC66186#article)

Elsafti, A., Van Berlaer, G., Al Safadi, M., Debacker, M., Buyl, R., Redwan, A., & Hubloue, I. (2017), Data from: Children in the Syrian civil war: the familial, educational, and public health impact of ongoing violence, Dryad, Dataset, [https://doi.org/10.5061/dryad.73ff4](https://doi.org/10.5061/dryad.73ff4)

