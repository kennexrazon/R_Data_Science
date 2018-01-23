# Getting and Cleaning Data Course Project ( Coursera )

The purpose of this project is to demonstrate the student's ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

## Getting Started

Get a local copy of run_analysis.R and place it in the same directory as the UCI HAR Dataset Folder.

## Prerequisites

The following packages for R were used:

```
dplyr Package
```

```
[UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
```

## What the script does

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Running the script 

Place the run_analysis.R scipt in the same directory as the UCI HAR Dataset Folder. A .txt file called subject_activity_mean.txt will be created.

## What the code does

1) The run_analysis.R script starts by loading the following files inside the folder UCI HAR Dataset.
* features.txt
* activity_labels.txt
* ./test
 


