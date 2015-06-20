library(plyr)


#1. Merges the training and the test sets to create one data set.

trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
dataSetSubject <- rbind(trainSubject, testSubject)

trainX <- read.table("UCI HAR Dataset/train/X_train.txt")
testX <- read.table("UCI HAR Dataset/test/X_test.txt")
dataSetX <- rbind(trainX, testX)

trainY <- read.table("UCI HAR Dataset/train/y_train.txt")
testY <- read.table("UCI HAR Dataset/test/y_test.txt")
dataSetY <- rbind(trainY, testY)



#2. Extracts only the measurements on the mean and standard deviation for each measurement. 

features <- read.table("UCI HAR Dataset/features.txt")
featuresMeanStandard <- grep("-(mean|std)\\(\\)", features[, 2])
dataSetX <- dataSetX[, featuresMeanStandard]
names(dataSetX) <- features[featuresMeanStandard, 2]



#3. Uses descriptive activity names to name the activities in the data set

activities <- read.table("UCI HAR Dataset/activity_labels.txt")
dataSetY[, 1] <- activities[dataSetY[, 1], 2]
names(dataSetY) <- "activity"



#4. Appropriately labels the data set with descriptive variable names. 

names(dataSetSubject) <- "subject"
dataFull <- cbind(dataSetX, dataSetY, dataSetSubject)



#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

dataTidy <- ddply(dataFull, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(dataTidy, "dataTidy.txt", row.name=FALSE)
