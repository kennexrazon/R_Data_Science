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

## 