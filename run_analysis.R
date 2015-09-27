## Load all the data from the files

features <- read.delim("./UCI HAR Dataset/features.txt", header = FALSE, sep = "", colClasses = "character")

subject_train <- read.delim("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "")

subject_test <- read.delim("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "")

labels <- read.delim("./UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = "", colClasses = "character")

X_train <- read.delim("./UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "")

y_train <- read.delim("./UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "")

X_test <- read.delim("./UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "")

y_test <- read.delim("./UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "")

## 1. Merges the training and the test sets to create one data set.

## merge X with Y for train
train <- cbind(X_train, y_train)

## merge train with subject
train <- cbind(train, subject_train)

## merge X with Y for test
test <- cbind(X_test, y_test)

## merge test with subject
test <- cbind(test, subject_test)

## merge train and test
data_set <- rbind(train, test)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

# find the indexes of the features we need
feature_indexes <- grep("mean()|std()", features[,2])

# create column names vector
column_names <- features[feature_indexes, 2]

# add label column index, which is 1
feature_indexes <- c(feature_indexes, nrow(features)+1, nrow(features)+2)

# choose the features we need
data_set <- data_set[, feature_indexes]

## 4. Appropriately labels the data set with descriptive variable names. 

# add activity and subject column names
column_names <- c(column_names, "Activity", "Subject")

# set new column names
colnames(data_set) <- column_names

## 3. Uses descriptive activity names to name the activities in the data set
for(i in 1: length(data_set)){
  data_set$Activity[i] <- labels[i,2]
}

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.




