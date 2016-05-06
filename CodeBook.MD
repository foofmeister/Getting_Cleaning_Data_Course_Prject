#Getting and Cleanind Data Course Project

Forest Summers

#Source Data 

Website about project: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Dataset Zip File: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


#Run_Analysis Script

1. First, extract data using by downloading zip, then read.table function
2. Merge Train and Test Data Sets using rbind
3. Rename Variables for more description using rename function
4. Download features
5. Eliminate all measurements except standard deviation and mean
6. Merge all data
7. Perform Aggregation

#Variables

x_test, x_train, y_test, y_train, sub_test, sub_train, features, activity_labels come directly from the source

Data_Agg: Aggregation of each activity and each subject, and each measurement (standard deviation and median only)
  Activity: Activty that was used for measurement
  Subject: Subject Number
  

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


