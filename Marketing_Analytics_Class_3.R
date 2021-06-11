# Class: 3

# Date of Last Update: 6/8/2021

# Author: Ken Faro, Ph.D.

# Copyright: All Documents © Dr. Kenneth R. Faro or © Inkblot Holdings, LLC

# License: Faro and Inkblot Educational License For One Semester Use

# Disclosure: These materials are subject to the terms of the "Notice of Faro and 
#             Inkblot Educational License For One Semester Use", posted in this repository. 


############################################################
########## Learning Basic Data Visualization in R ########## 
############################################################

#######################################
##### Learning The GGPLOT Package #####
#######################################

install.packages("ggplot2")

library("ggplot2")

#####GGPLOT uses Package Arguments + Aesthetic + Geometric Object 

##### Package Arguments

graph <- ggplot(df)

##### Package Arguments + Aesthetic 

graph <- ggplot(df, aes(x, y))

#####  Package Arguments + Aesthetic + Geometric Object 
graph <- ggplot(df, aes(x-variable)) + geom_bar()

#Other example geometric objects

# Geom_bar()
# Geom_point()
# Geom_boxplot()

####################################
##### Data Viz On Real Dataset #####
####################################

data <- Climate

data1 <- as.data.frame(data)

graph <- ggplot(data1, aes(Q15_1, Q15_2, color=condition))+geom_point()+geom_smooth(method="lm", formula = y~poly(x,5))

graph1 <- ggplot(data1, aes(Q15_1, color=condition))+geom_histogram()

##########################################
##### Data Wrangling Before Data Viz #####
##########################################

# Use the dplyr package
install.packages("dplyr")
library(dplyr)

# Use %>% as a "piping" function
means <- data1 %>%
  select(condition, Q26_1) %>%
  group_by(condition) %>%
  summarise(mean(Q26_1))

graph1 <- ggplot(means, aes(x, color=condition))+geom_boxplot()
