# Class: 4

# Date Of Last Update: 6/10/2021

# Author: Ken Faro, Ph.D.

# Copyright: All Documents © Dr. Kenneth R. Faro or © Inkblot Holdings, LLC

# License: Faro and Inkblot Educational License For One Semester Use

# Disclosure: These materials are subject to the terms of the "Notice of Faro and 
#             Inkblot Educational License For One Semester Use", posted in this repository. 


####################################################
########## Learning Basic Statistics in R ########## 
####################################################

###################################
##### Beginning Class Example #####
###################################

# Checking working directory

getwd()

# Load data
data <- read.csv("credit_score.csv")

# Check structure of data
str(data)

# See the dataframe
View(data)

# Build a histogram of one variable

# Load library
 library(ggplot2)

plot <- ggplot(data, aes(online.spend, color=email))+geom_histogram()

#########################################
##### Different Kinds of Statistics #####
#########################################

##### descriptive statistics
#Mean
#Variance

##### Association statistics
#correlation
#regression
#covariance
#moving averages (time series)

##### Measures of Difference
#ANOVA (Analysis of variance)
# t-Test / Z-test

####################################
##### Load Packages For Lesson #####
####################################

install.packages("polycar")
install.packages("Hmisc")
install.packages("ggm")
install.packages("boot")

library(polycar)
library(Hmisc)
library(ggm)
library(boot)

########################
##### Correlations #####
########################

cor(data$age,data$credit.score)

#####About Correlations
# correlation goes between -1 and 1
# if -1, then strong negative
# if 1, then strong positive correlation
# if 0, no association /correlation
# if it's -1.5, then you have a problem (no such correlation)

##### Problem With Running A Function?
# NOTE: When you have conflicting packages, use "::" to specify what package should be used for that function
Hmisc::rcorr(data$age,data$credit.score, type="pearson")

#####Two types of correlation we can use for this function
# Spearman
# Pearson
# Tetrachoric
# polychoric
# biserial 
# polyserial

########################
##### Significance #####
########################

##### What does it mean to be statistically significant
# Is the association we got a real one?
# Is the association we obtained different from 0 (no association)?
# Is the association big enough that it couldn't have been created by chance alone?

# A statistic is significant when the p-value < .05

##### What does it mean to be practically significant
#Effect size
#Small = .2
#Medium = .5
#Large = .8

######################
##### Regression #####
######################

# A correlation is a basic association between variables 
# A regression is when you predict a variable, from combination of other variables
# To assess good model vs bad model, we use R-squared.

install.packages("QuantPsyc")

install.packages("car")

# y ~ x+x2+x3+x4...

model <- lm(credit.score ~ age, data=data)
model2 <- lm(credit.score ~ age + online.spend, data=data)

anova(model,model2)

summary(model2)

##### How To Interpret R-Squared
# 6% of the variace in credit score is explained by age

######################
##### t-Test #####
######################

t.test(data2$money ~ data2$loyalty2)

######################
##### ANOVA #####
######################

library("ggpubr")

ggboxplot(data2, x = "income", y = "openness", 
          color = "income")

summary(aov(data2$openness ~ data2$income))

TukeyHSD(aov(data2$openness ~ data2$income))


