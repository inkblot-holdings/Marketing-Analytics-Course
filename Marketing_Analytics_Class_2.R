# Class: 2

# Date Of Last Update: 6/3/2021

# Author: Ken Faro, Ph.D.

# Copyright: All Documents © Dr. Kenneth R. Faro or © Inkblot Holdings, LLC

# License: Faro and Inkblot Educational License For One Semester Use

# Disclosure: These materials are subject to the terms of the "Notice of Faro and 
#             Inkblot Educational License For One Semester Use", posted in this repository. 


###########################################
########## Learning How To Use R ##########
###########################################

#################################
##### Creating Objects in R #####
#################################

##### Creating values

#Numeric object that is a value
value1 <- 4

##### Creating lists

#An object that is a list of characters
list1 <- c("Red","green","blue")
# NOTE: c() stands for "combine"

##### Creating vectors

#Numerical Vector
vector1 <- c(1,2,3,4,5,6)

#Logical vector
vector2 <- c(TRUE, FALSE, FALSE, TRUE)

Vector2  
# NOTE: that objects are caps sensitive. So calling this object won't work

##### Creating matrices

#2x2 matrix
cell <-c(1,26,24,68)
rnames <- c("r1","r2")
cnames <- c("c1", "c2")
Ken_Matrix <-matrix(cell, nrow=2, ncol = 2, byrow=FALSE)

##### Creating Dataframes

#DF with three variables
d <- c(1,2,3)
e <- c("red","white","blue")
f <- c(TRUE, FALSE, TRUE)

df <- data.frame(d,e,f)

#Naming Function

names(df) <- c("ID","Color","Passed")

# NOTE: Once you change names, only use those variable names moving forward

###############################
##### Using an Index in R #####
###############################

# NOTE: When you see square brackets [ ] containing values [1:2, 1:2] it stands for "select" [these_rows, these_columns]
df[,1] 

# NOTE: When rows is left blank, R uses all rows
df[,1:2]

#Pretend that df has 50 million columns, you can create a subset dataframe
df2 <- df[,1:2]

#Using index values to select non-sequential variables
df3 <- df[,c(1,3)]

#####################################
##### Using Variable Names in R #####
#####################################

df$ID
#NOTE: use "$" to select variable from a dataframe

df4 <- data.frame(df$ID, df$Color)

df4$df.ID

############################
##### Removing NA in R #####
############################

na.omit() #remove any/all missing values

################################################
##### get and set a working directory in R #####
################################################

#####Find you working directory
getwd()

#####Set your working directory
setwd("/Users/Ken/Desktop")

####################################
##### Install and Use Packages #####
####################################

##### To install packages
install.packages("readxl")

##### To call libraries
library(readxl)

##########################
##### Importing Data #####
##########################

data2 <- read_excel("data.xlsx")

############################
##### Basic Operations #####
############################

#####Core functions

#divide
data$pep_imp1 <- data$`Importance of pepperoni quality`/2
#multiply
data$pep_imp2 <- data$`Importance of pepperoni quality`*2
#exponential
data$pep_imp3 <- data$`Importance of pepperoni quality`**2

#####Other functions

#Greater than
>
#greater than or equal to
>=
#equal
==
#not equal
!=
