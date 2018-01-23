# run_analysis.R

This document describes the variables, and functions used in run_analysis.R

The scipt assumes the run_analysis.R script is placed at together with the UCI HAR Dataset Folder.

## General code flow

1. Load relevant data

2. Merge test and train files

3. Find features with "mean" or "std" as part of the column name using grep.

4. Change the numerical representation of activity to descriptive

5. Group the resulting dataframe into subject and activity using the `dplyr` package.

6. Get the mean for the features given the groupings

7. Write the result to a text file.

## Constants

* `testPath<-"./UCI HAR Dataset/test/"`
* `trainPath<-"./UCI HAR Dataset/train/"`

## Functions

### merge_subject_activity_data

Used to merge the subject, activity and the features data. The function also renames the based on the following files:

* subject_test.txt
* subject_train.txt
* y_test.txt
* y_train.txt
* features.txt

## Output

### Time-Series Features

* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z       
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z    
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z   
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z      
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z  
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()  
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()

###  Frequency Domain Features
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z       
* fGravityAcc-mean()-X
* fGravityAcc-mean()-Y
* fGravityAcc-mean()-Z
* fGravityAcc-std()-X
* fGravityAcc-std()-Y
* fGravityAcc-std()-Z    
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z   
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z      
* fBodyGyroJerk-mean()-X
* fBodyGyroJerk-mean()-Y
* fBodyGyroJerk-mean()-Z
* fBodyGyroJerk-std()-X
* fBodyGyroJerk-std()-Y
* fBodyGyroJerk-std()-Z  
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fGravityAccMag-mean()
* fGravityAccMag-std()
* fBodyAccJerkMag-mean()
* fBodyAccJerkMag-std()  
* fBodyGyroMag-mean()
* fBodyGyroMag-std()
* fBodyGyroJerkMag-mean()
* fBodyGyroJerkMag-std()

