
### FOREST R HOMEWORK


## Install Packages
library(RCurl)
library(plyr)
library(dplyr)


## Working Directory
setwd("C:/Users/summers.forest/R/Coursera_Data_Cleaning")



## Download Zip
urlzip <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(urlzip,"SMARTPHONE.zip")
unzip("SMARTPHONE.zip")


## Train & Test Data Sets
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")


## Merge Train/Test Data Sets
data <- rbind(x_train, x_test)
yvar <- rbind(y_train, y_test)
yvar <- plyr::rename(yvar,c("V1"="Activity"))


## Subject/Participant Identifiers
sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
sub <- rbind(sub_train, sub_test)
sub <- plyr::rename(sub,c("V1"="Subject"))


## Features
features <- read.table("./UCI HAR Dataset/features.txt")

#Change Names of Data Set to Actual Names using 

names(data) <- features$V2

#features_mean_std <- features[grepl("mean|std",features$V2),]

features_mean_std <- grepl("mean|std",features$V2)

data1 <- subset(data,select = features_mean_std)

data2 <- cbind(sub,yvar,data1)

#Download Activity Lables

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

#Merge data with activity labels
data3 <- merge(activity_labels,data2,by.x="V1",by.y="Activity")


#Rename Activity and remove "V2"
data3 <- plyr::rename(data3,c("V2"="Activity"))

Final_Data <- select(data3,-V1)
#Final_Data <- data3[c(-1)]


## Mean Aggregations
Data_Agg <- aggregate(. ~ Activity + Subject, data = Final_Data, FUN=function(Final_Data) c(mn=mean(Final_Data), n=length(Final_Data) ) )

output <- write.table(Data_Agg, file = "output", row.names = FALSE, sep=",")

