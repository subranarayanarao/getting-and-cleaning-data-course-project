## load plyr and dplyr libraries
library(plyr)
library(dplyr)


## this function is for loading test or train data into a dataframe, transform 
## activity codes into labels and combine subject codes into the dataframe.

loadUCIHARData <- function (name) {
  
  x_filename <- paste("UCI HAR Dataset/",name,"/X_",name,".txt", sep="")
  y_filename <- paste("UCI HAR Dataset/",name,"/y_",name,".txt", sep="")
  sub_filename <- paste("UCI HAR Dataset/",name,"/subject_",name,".txt", sep="")
  
  data <- read.table(x_filename, header=FALSE, sep = "")
  
  colnames(data) <- feature_names$V2
  
  activity_data <- read.delim(y_filename, header=FALSE)
  
  activity_data$V1 <- mapvalues(x=activity_data$V1, from=activity_labels$V1, to=as.character(activity_labels$V2))
  
  subject_data <- read.delim(sub_filename, header=FALSE)
  
  features_data <- cbind(subject_data$V1, activity_data$V1)
  
  colnames(features_data) <- c("subject", "activity")
  
  features_data <- cbind(features_data[,1:2], data[,1:561])  
  
  
}

## set the working directory
setwd("c:/datascience")

## load the activity labels
activity_labels <- read.delim("UCI HAR Dataset/activity_labels.txt", header=FALSE, sep= " ")

## load the feature names
feature_names <- read.delim("UCI HAR Dataset/features.txt", header=FALSE, sep=" ")

## load the test data
test_data <- loadUCIHARData("test")

## load the train data
train_data <- loadUCIHARData("train")


## combine the test and train datasets
features <- rbind(test_data, train_data)

## find the mean and std columns
stdcols <- grep("std()", names(features), fixed = TRUE)

meancols <- grep("mean()", names(features), fixed = TRUE)

mean_std_features <- features[, c(1,2,meancols, stdcols)]

## modify the column names to be more readable and meaningful
colnames <- names(mean_std_features)
colnames <- gsub("()", "", colnames, fixed = TRUE)
colnames <- gsub("mean", "Mean", colnames, fixed = TRUE)
colnames <- gsub("std", "StandardDeviation", colnames, fixed = TRUE)
colnames <- gsub("-", "", colnames, fixed = TRUE)
colnames <- gsub("tBody", "TimeBody", colnames, fixed = TRUE)
colnames <- gsub("fBody", "FrequencyBody", colnames, fixed = TRUE)
colnames <- gsub("tGravity", "TimeGravity", colnames, fixed = TRUE)
colnames <- gsub("fGravity", "FrequencyGravity", colnames, fixed = TRUE)
colnames <- gsub("Acc", "Acceleration", colnames, fixed = TRUE)
colnames <- gsub("BodyBody", "Body", colnames, fixed = TRUE)

colnames(mean_std_features) <- colnames

## find the mean of the variables grouped by subject and activity
step5 <- mean_std_features %>% group_by(subject, activity) %>% summarize_each(funs(mean(.,na.rm=TRUE))) %>% arrange(subject,activity)

## save the tidy data into a text file
write.table(step5, "step5_tidy_data.txt", row.name=FALSE, quote=FALSE)


