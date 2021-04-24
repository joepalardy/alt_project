library(tidymodels)
library(tidyverse)

######We are going to take the data that we cleaned earlier and estimate two models.
##We are going to use LASSO and a boosted Tree.
##We are only interested in how well non-location factors affect scores. We'll remove country and school ids.
###We'll also need to drop year, because it is a constant factor.
###

###1. Load in the student_data from your data folder using
#readRDS


###2. Create training and testing sets
#### 

###LASSO

###Formulate your recipe or data prep
####a. Make sure to take care of index variables. (use step_rm if you need to remove variables)
####b. You'll need to normalize variables and convert factors to dummy variables.
####c. Make sure you don't convert something like student id to a dummy!
####d. tune for penalty
####e. Save your final finalized workflow and your final fit as R objects using saveRDS. Save them in the models folder.
####f. Note that the objects are really big. Tidymodels saves lots of things. 
######There are more compact ways to do this, but we won't worry about them.



###Boosted Trees

###Formulate your recipe or data prep
####a. Make sure to take care of index variables.
####b. You'll still need to convert factors to dummy variables, but there is no need for normalization
####c. Make sure you don't convert something like student id to a dummy!
####d. You'll want to split your data and tune.
####e. Save your final finalized workflow and your final fit as R objects using saveRDS. Save them in the models folder.



