# Class: 9

# Date Of Last Update: 7/6/2021

# Author: Ken Faro, Ph.D.

# Copyright: All Documents © Dr. Kenneth R. Faro or © Inkblot Holdings, LLC

# License: Faro and Inkblot Educational License For One Semester Use

# Disclosure: These materials are subject to the terms of the "Notice of Faro and 
#             Inkblot Educational License For One Semester Use", posted in this repository. 


###########################################
########## CLASS In R ##########
###########################################

# Perceptual Maps - What are they?

# A visual that displays customer perceptions

# Data needed: Attributes about the brand (e.g., quality, price)

# Date needed: Survey to  somehow link those attributes to a product/brand

### Step 1 : Data Pre-processing

data1 <- read.csv("/Users/Ken/Desktop/data12.csv")

str(data1)

rownames(data1) <- data1[,1]

data2 <- data1[,-1]

### Step 2: CA

install.packages("FactoMineR")
install.packages("factoextra")
library(FactoMineR)
library(factoextra)

data2 <- as.data.frame(data2)
map <- CA(data2)
map1 <- factoextra::fviz_ca_biplot(map, labelsize=3,pointsize=1, col.col="black",col.row="black")


###

data3 <- read.csv("/Users/Ken/Desktop/data2.csv")
rownames(data3) <- data3[,1]
data4 <- data3[,-1]
data4 <- as.data.frame(data4)
map2 <- CA(data4)
map1 <- factoextra::fviz_ca_biplot(map2, labelsize=3,pointsize=1, col.col="black",col.row="black")

data5 <- read.csv("/Users/Ken/Desktop/data3.csv")
rownames(data5) <- data5[,1]
data6 <- data5[,-1]
data6 <- as.data.frame(data6)
map2 <- CA(data6)
map1 <- factoextra::fviz_ca_biplot(map2, labelsize=3,pointsize=1, col.col="black",col.row="black")

