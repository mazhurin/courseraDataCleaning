
Coursera Data Cleaning course project
=======

Course project assignment for "Getting and Cleaning Data" course on www.Coursera.org

## Installation

* Install R 

* Get the data archive from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

* Unzip the data archive into the current folder. You should have the folder named "UCI HAR Dataset" in the current folder.


## Example of usage

1. Open R, and load the run the script:
 
> source("./run_analysis.R")  

2. A dataframe HumanActivitySummary will be created

> HumanActivitySummary[1:5, 1:4]  
Source: local data frame [5 x 4]  
Groups: Activity [1]  
  
  Activity Subject tBodyAcc-mean()-X tBodyAcc-mean()-Y  
     (chr)   (int)             (dbl)             (dbl)  
1   LAYING       1         0.2215982       -0.04051395  
2   LAYING       2         0.2813734       -0.01815874  
3   LAYING       3         0.2755169       -0.01895568  
4   LAYING       4         0.2635592       -0.01500318  
5   LAYING       5         0.2783343       -0.01830421  


3. The dataframe will be stored in HumanActivitySummary.txt


## Description

The input dataset for this project is "Human Activity Recognition Using Smartphones Dataset" from 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

The input data set contains sensor signals from accelerometers and gyroscopes recorded during an experiment 
with a group of 30 volunteers.  
Each person performed six activities wearing a smartphone on the waist:  
 * WALKING
 * WALKING_UPSTAIRS
 * WALKING_DOWNSTAIRS
 * SITTING
 * STANDING
 * LAYING

The programm does the following processing:   
 1. Merges train and test datasets.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive variable names. 
 5. Creates a tidy data set with the average of each variable for each activity and each subject.






