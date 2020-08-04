#Load the dplyr Library
library(dplyr)

################################################################################
##LOADING THE TABLES
#Load the train data
x_train<- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<- read.table("./UCI HAR Dataset/train/Y_train.txt")
#x_train and y_train have 7352 obs. of 561 features
subject_train<- read.table("./UCI HAR Dataset/train/subject_train.txt")
#subject_train has 7352 obs. of 1 feature

#Load the test data
x_test<- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test<- read.table("./UCI HAR Dataset/test/Y_test.txt")
#x_test and y_test have 2947 obs. of 561 features
subject_test<- read.table("./UCI HAR Dataset/test/subject_test.txt")
#subject_test has 2947 obs. of 1 feature

#Load the features
features<- read.table("./UCI HAR Dataset/features.txt")
#features have 561 obs. of 2 variables

#Load Activity labels
Activity_labels<- read.table("./UCI HAR Dataset/activity_labels.txt")
#activity_labels have 6 obs. of 2 variables
################################################################################


## 1. Merges the training and the test sets to create one data set.
x_unified<- rbind(x_train, x_test)
y_unified<- rbind(y_train, y_test)
#x_unified and y_unified have 10299 obs of 561 features
Subject_Unified<- rbind(subject_train, subject_test)
#subject_unified has 10299 obs of 1 feature


## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
#Every function in the features has the pattern "-mean(", "-std"
selected_variable<- features[grep('-mean\\(|-std', features[,2]),]
#We will keep 66 features
x_extracted<- x_unified[,selected_variable[,1]]  
#So the dimension of X_extracted is 10299 obs. of 66 features


## 3. Uses descriptive activity names to name the activities in the data set.
#First I changed the column names V1, V2. in Activity_labels 
colnames(Activity_labels)<- c("indexActivity", "activity")
#Then I changed the column name V2 in y_unified
colnames(y_unified)<- "indexActivity"
#Created a second column in y_unified including the activity names 
y_unified$activity<- factor(y_unified$indexActivity, labels= Activity_labels$activity)
# So the activity names will be stored in:
y_unified[,2]


## 4. Appropriately labels the data set with descriptive variable names.
#take the labels from selected_variable and use them in x_extracted  
colnames(x_extracted)<- selected_variable[,2]


## 5. From the data set in step 4, creates a second, independent tidy data set with  
#     the average of each variable for each activity and each subject.
colnames(Subject_Unified)<- "subjectid"
tidy_data<- cbind(Subject_Unified, y_unified$activity, x_extracted )
colnames(tidy_data)[2]<-"activity"
#Select the data, then group by activities (6) and subjects(30), finally, calculate the mean 
# in every column that is double 
tidy_data_mean<- tidy_data%>% group_by(activity, subjectid) %>%
        summarise(across(where(is.double), mean))
#tidy_data_mean have 180 obs. of 68 variables.

#Now we have to create the tidydata.txt from tidy_data_mean, saving the column names. 
write.table(tidy_data_mean, file = "./tidydata.txt", row.names = FALSE, col.names = TRUE)