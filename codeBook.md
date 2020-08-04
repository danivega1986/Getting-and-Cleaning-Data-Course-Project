
## Data set Description
In this project we used eight file:
1. features.txt: List of all features.
2. activity_labels.txt: Links the class labels with their activity name.
3. train/X_train.txt: Training set.
4. train/y_train.txt: Training labels.
5. test/X_test.txt: Test set.
6. test/y_test.txt: Test labels.
7. train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample.
8. test/subject_test.txt: This description is equivalent to train/subject_train.txt

The data was splitted in training 70% and test 30% of all observations.

## Dimension of the data
1. features have 561 obs. of 2 variables
2. activity_labels have 6 obs. of 2 variables
3. x_train and y_train have 7352 obs. of 561 features.
4. x_test and y_test have 2947 obs. of 561 features
5. subject_train has 7352 obs. of 1 feature
6. subject_test has 2947 obs. of 1 feature

## About Tidy Data set
tidydata.txt contains 180 rows and 68 columns. The first two columns are the activity and the subject. Every row has the average for each activity and eaxh subject.

## Variables in Tidy Data set
All the variables estimated were variables which have mean or standard deviation from the original Data Set. in other words we kept just 66 features from 561.

This is the list of variables is tidydata.txt:

 [1] "activity"                         "subjectid"                  
 [3] "tBodyAcc-mean()-X"                "tBodyAcc-mean()-Y"          
 [5] "tBodyAcc-mean()-Z"                "tBodyAcc-std()-X"           
 [7] "tBodyAcc-std()-Y"                 "tBodyAcc-std()-Z"           
 [9] "tGravityAcc-mean()-X"             "tGravityAcc-mean()-Y"       
[11] "tGravityAcc-mean()-Z"             "tGravityAcc-std()-X"        
[13] "tGravityAcc-std()-Y"              "tGravityAcc-std()-Z"        
[15] "tBodyAccJerk-mean()-X"            "tBodyAccJerk-mean()-Y"      
[17] "tBodyAccJerk-mean()-Z"            "tBodyAccJerk-std()-X"       
[19] "tBodyAccJerk-std()-Y"             "tBodyAccJerk-std()-Z"       
[21] "tBodyGyro-mean()-X"               "tBodyGyro-mean()-Y"         
[23] "tBodyGyro-mean()-Z"               "tBodyGyro-std()-X"          
[25] "tBodyGyro-std()-Y"                "tBodyGyro-std()-Z"          
[27] "tBodyGyroJerk-mean()-X"           "tBodyGyroJerk-mean()-Y"     
[29] "tBodyGyroJerk-mean()-Z"           "tBodyGyroJerk-std()-X"      
[31] "tBodyGyroJerk-std()-Y"            "tBodyGyroJerk-std()-Z"      
[33] "tBodyAccMag-mean()"               "tBodyAccMag-std()"          
[35] "tGravityAccMag-mean()"            "tGravityAccMag-std()"       
[37] "tBodyAccJerkMag-mean()"           "tBodyAccJerkMag-std()"      
[39] "tBodyGyroMag-mean()"              "tBodyGyroMag-std()"         
[41] "tBodyGyroJerkMag-mean()"          "tBodyGyroJerkMag-std()"     
[43] "fBodyAcc-mean()-X"                "fBodyAcc-mean()-Y"          
[45] "fBodyAcc-mean()-Z"                "fBodyAcc-std()-X"           
[47] "fBodyAcc-std()-Y"                 "fBodyAcc-std()-Z"           
[49] "fBodyAccJerk-mean()-X"            "fBodyAccJerk-mean()-Y"      
[51] "fBodyAccJerk-mean()-Z"            "fBodyAccJerk-std()-X"       
[53] "fBodyAccJerk-std()-Y"             "fBodyAccJerk-std()-Z"       
[55] "fBodyGyro-mean()-X"               "fBodyGyro-mean()-Y"         
[57] "fBodyGyro-mean()-Z"               "fBodyGyro-std()-X"          
[59] "fBodyGyro-std()-Y"                "fBodyGyro-std()-Z"          
[61] "fBodyAccMag-mean()"               "fBodyAccMag-std()"          
[63] "fBodyBodyAccJerkMag-mean()"       "fBodyBodyAccJerkMag-std()"  
[65] "fBodyBodyGyroMag-mean()"          "fBodyBodyGyroMag-std()"     
[67] "fBodyBodyGyroJerkMag-mean()"      "fBodyBodyGyroJerkMag-std()" 

Activity column has 6 groups which are:
  activity
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING
we use this variable as a factor.

subjectid has been numered from 1 to 30. Each number is a subject.

## Data Unit
In the tidy data (tidydata.txt) this is the list of units for each variabel:
1. "activity"           is int
2. "subjectid"          is factor
From 3 untill 68        are double.