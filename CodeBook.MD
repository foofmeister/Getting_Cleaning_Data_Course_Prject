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

#Data Sets

x_test, x_train, y_test, y_train, sub_test, sub_train, features, activity_labels come directly from the source

Data_Agg: Aggregation of each activity and each subject, and each measurement (standard deviation and median only)

Final_Data: Non Aggregation of every test for each activity and each subject.

#Variables in Data_Agg and Final_Data

Subject: Subject Number
Activty: Descibes the activity the subject engaged for the measurement.

The following helps describe the measurements and is transposed directly from source material:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The Following are the measurements taken:

tBodyAcc-mean()-X.mn,tBodyAcc-mean()-X.n,tBodyAcc-mean()-Y.mn,tBodyAcc-mean()-Y.n,tBodyAcc-mean()-Z.mn,tBodyAcc-mean()-Z.n,tBodyAcc-std()-X.mn,tBodyAcc-std()-X.n,tBodyAcc-std()-Y.mn,tBodyAcc-std()-Y.n,tBodyAcc-std()-Z.mn,tBodyAcc-std()-Z.n,tGravityAcc-mean()-X.mn,tGravityAcc-mean()-X.n,tGravityAcc-mean()-Y.mn,tGravityAcc-mean()-Y.n,tGravityAcc-mean()-Z.mn,tGravityAcc-mean()-Z.n,tGravityAcc-std()-X.mn,tGravityAcc-std()-X.n,tGravityAcc-std()-Y.mn,tGravityAcc-std()-Y.n,tGravityAcc-std()-Z.mn,tGravityAcc-std()-Z.n,tBodyAccJerk-mean()-X.mn,tBodyAccJerk-mean()-X.n,tBodyAccJerk-mean()-Y.mn,tBodyAccJerk-mean()-Y.n,tBodyAccJerk-mean()-Z.mn,tBodyAccJerk-mean()-Z.n,tBodyAccJerk-std()-X.mn,tBodyAccJerk-std()-X.n,tBodyAccJerk-std()-Y.mn,tBodyAccJerk-std()-Y.n,tBodyAccJerk-std()-Z.mn,tBodyAccJerk-std()-Z.n,tBodyGyro-mean()-X.mn,tBodyGyro-mean()-X.n,tBodyGyro-mean()-Y.mn,tBodyGyro-mean()-Y.n,tBodyGyro-mean()-Z.mn,tBodyGyro-mean()-Z.n,tBodyGyro-std()-X.mn,tBodyGyro-std()-X.n,tBodyGyro-std()-Y.mn,tBodyGyro-std()-Y.n,tBodyGyro-std()-Z.mn,tBodyGyro-std()-Z.n,tBodyGyroJerk-mean()-X.mn,tBodyGyroJerk-mean()-X.n,tBodyGyroJerk-mean()-Y.mn,tBodyGyroJerk-mean()-Y.n,tBodyGyroJerk-mean()-Z.mn,tBodyGyroJerk-mean()-Z.n,tBodyGyroJerk-std()-X.mn,tBodyGyroJerk-std()-X.n,tBodyGyroJerk-std()-Y.mn,tBodyGyroJerk-std()-Y.n,tBodyGyroJerk-std()-Z.mn,tBodyGyroJerk-std()-Z.n,tBodyAccMag-mean().mn,tBodyAccMag-mean().n,tBodyAccMag-std().mn,tBodyAccMag-std().n,tGravityAccMag-mean().mn,tGravityAccMag-mean().n,tGravityAccMag-std().mn,tGravityAccMag-std().n,tBodyAccJerkMag-mean().mn,tBodyAccJerkMag-mean().n,tBodyAccJerkMag-std().mn,tBodyAccJerkMag-std().n,tBodyGyroMag-mean().mn,tBodyGyroMag-mean().n,tBodyGyroMag-std().mn,tBodyGyroMag-std().n,tBodyGyroJerkMag-mean().mn,tBodyGyroJerkMag-mean().n,tBodyGyroJerkMag-std().mn,tBodyGyroJerkMag-std().n,fBodyAcc-mean()-X.mn,fBodyAcc-mean()-X.n,fBodyAcc-mean()-Y.mn,fBodyAcc-mean()-Y.n,fBodyAcc-mean()-Z.mn,fBodyAcc-mean()-Z.n,fBodyAcc-std()-X.mn,fBodyAcc-std()-X.n,fBodyAcc-std()-Y.mn,fBodyAcc-std()-Y.n,fBodyAcc-std()-Z.mn,fBodyAcc-std()-Z.n,fBodyAcc-meanFreq()-X.mn,fBodyAcc-meanFreq()-X.n,fBodyAcc-meanFreq()-Y.mn,fBodyAcc-meanFreq()-Y.n,fBodyAcc-meanFreq()-Z.mn,fBodyAcc-meanFreq()-Z.n,fBodyAccJerk-mean()-X.mn,fBodyAccJerk-mean()-X.n,fBodyAccJerk-mean()-Y.mn,fBodyAccJerk-mean()-Y.n,fBodyAccJerk-mean()-Z.mn,fBodyAccJerk-mean()-Z.n,fBodyAccJerk-std()-X.mn,fBodyAccJerk-std()-X.n,fBodyAccJerk-std()-Y.mn,fBodyAccJerk-std()-Y.n,fBodyAccJerk-std()-Z.mn,fBodyAccJerk-std()-Z.n,fBodyAccJerk-meanFreq()-X.mn,fBodyAccJerk-meanFreq()-X.n,fBodyAccJerk-meanFreq()-Y.mn,fBodyAccJerk-meanFreq()-Y.n,fBodyAccJerk-meanFreq()-Z.mn,fBodyAccJerk-meanFreq()-Z.n,fBodyGyro-mean()-X.mn,fBodyGyro-mean()-X.n,fBodyGyro-mean()-Y.mn,fBodyGyro-mean()-Y.n,fBodyGyro-mean()-Z.mn,fBodyGyro-mean()-Z.n,fBodyGyro-std()-X.mn,fBodyGyro-std()-X.n,fBodyGyro-std()-Y.mn,fBodyGyro-std()-Y.n,fBodyGyro-std()-Z.mn,fBodyGyro-std()-Z.n,fBodyGyro-meanFreq()-X.mn,fBodyGyro-meanFreq()-X.n,fBodyGyro-meanFreq()-Y.mn,fBodyGyro-meanFreq()-Y.n,fBodyGyro-meanFreq()-Z.mn,fBodyGyro-meanFreq()-Z.n,fBodyAccMag-mean().mn,fBodyAccMag-mean().n,fBodyAccMag-std().mn,fBodyAccMag-std().n,fBodyAccMag-meanFreq().mn,fBodyAccMag-meanFreq().n,fBodyBodyAccJerkMag-mean().mn,fBodyBodyAccJerkMag-mean().n,fBodyBodyAccJerkMag-std().mn,fBodyBodyAccJerkMag-std().n,fBodyBodyAccJerkMag-meanFreq().mn,fBodyBodyAccJerkMag-meanFreq().n,fBodyBodyGyroMag-mean().mn,fBodyBodyGyroMag-mean().n,fBodyBodyGyroMag-std().mn,fBodyBodyGyroMag-std().n,fBodyBodyGyroMag-meanFreq().mn,fBodyBodyGyroMag-meanFreq().n,fBodyBodyGyroJerkMag-mean().mn,fBodyBodyGyroJerkMag-mean().n,fBodyBodyGyroJerkMag-std().mn,fBodyBodyGyroJerkMag-std().n,fBodyBodyGyroJerkMag-meanFreq().mn,fBodyBodyGyroJerkMag-meanFreq().n




