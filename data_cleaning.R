library(tidyverse)
devtools::install_github("kevinwang09/learningtower") ###make sure you have devtools installed.
library(learningtower)
data(student)
head(student)

#####For this project, we are going to be using data from the PISA (Programme for International Student Assessment)
####the learningtower package creates a simple subset of the data that we can use for analysis. The actual PISA data is 
#####rather complex, and it would take considerable data cleaning.


####1. We are only going to be using data for the year 2012, and we'll want to drop the NA's.
####You can use drop_na and filter from the tidyverse.

student_data <- student
####2. Take initial look at the data and see if there are any major issues. Make notes of how you'll want to create your recipe.

####3. We'll just be using math data for this study. Remove reading and science. Also remove stu_wgt, we won't be using it.

####4. We are going to later create some maps. Let's create some data for those maps.
###the choroplethrMaps package has some data we are going to use.
###Load the library
library(choroplethrMaps)
data(country.map)

####5. Summarize the data and find the average values for the quantitative data (not including stu_wgt). I've already done math for you.
####Note: we are going to ignore weighting.

###Add additional means of numeric values. We'll be doing some graphing in the dashboard.
#You could also do the mode of qualitative variables. 
###The OECD reports the difference between male and female results by country. If you can, try to add this variable.(not required)

summarized_data <- student_data %>% group_by(country) %>% 
  summarise(avg_math = mean(math))


####6. Join the data 
#####here is the code to join the data.
summarized_data  %>% full_join(country.map %>% select(long, lat, group, iso_a3), by = c("country" ="iso_a3")) -> map_data
#####7. Test the map. We'll cleanup the map and add a title and notes in the dashboard.
ggplot(country_data, aes(long, lat, group=group, fill =avg_math)) + geom_polygon()


####8. Using saveRDS save the map_data and the student_data. Store them in the data folder. These files will form the basis of our dashboard.



