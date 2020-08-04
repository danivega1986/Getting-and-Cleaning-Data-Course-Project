# Getting-and-Cleaning-Data-Course-Project

This repositorie has been created to complete the Getting and Cleaning Data course from Johns Hopkings University through Coursera.

## In this repo you will find:

* A readme.md file which has a general description of this repo.
* A code book that describes the variables, the data, and work performed to clean up the data, file codeBook.md
* An R script that contains the code to solve the tasks using the data and variables from codeBook.md. Script name run_analysis.R
* A tidy data set which is the outcome of the process in the task number 5, file tidydata.txt 

## Data
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Tasks
In this projec the student should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
{
## 1. Merges the training and the test sets to create one data set.
x_unified<- rbind(x_train, x_test)
y_unified<- rbind(y_train, y_test)
#x_unified and y_unified have 10299 obs of 561 features
Subject_Unified<- rbind(subject_train, subject_test)
#subject_unified has 10299 obs of 1 feature
}
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


