#------------------------------------------------------------------------------
#Description: This script consolidates the datasets to make it tidy wide and narrow dataset
#             needed for Human Activity Recognition using smart phones.
#Author:      Jayant Kenjale
#Date:        Feb,23 2016
#------------------------------------------------------------------------------

#Step 1: setup your working directory
setwd("~/Documents/Tech/Coursera-Data-Scientist/3-Data-Getting-and-Cleaning-Data/Project-1")

#Step 2: Read features dataset, which are variables(columns) in the main dataset.
# And they are common for both TEST and TRAIN datasets.
features <- read.table("./data/features.txt")


#Step 3: Lets work on TEST data sets it has following sub tasks.

#Step 3.1: Read X data set of for  test in a variable and provide the column names we read from features
testDataX <- read.table("./data/test/X_test.txt")
# Applying column names to X Test data set.
colnames(testDataX) <- as.character(features$V2)

#Step 3.2: Work on TEST Activities, Assign them names and convert them into labels. 
#It has following sub tasks.

#Step 3.2.1: Read Y_Test Activities, assign the name to this new column.
activity <- read.table("./data/test/y_test.txt", col.names="Activity")

#Step 3.2.2: Read Activities, assign names to these new columns.
activityLabels <- read.table("./data/activity_labels.txt", col.names=c("Activity","ActivityLabels"))

#Step 3.2.3: Now merge Activity Labels with Activtiy Observations
labeledTestDataY <- merge(activityLabels, activity, by="Activity", all=TRUE)

#Step 3.3: Clip the Activities to the X data set
testDatawithLabels <- cbind("ActivityLabels"=labeledTestDataY$ActivityLabels,testDataX)

#Step 3.4: Read Subject observations and, clip them to X data set
testSubject <- read.table("./data/test/subject_test.txt", col.names="Subjects")
testDatawithSubject <- cbind("Subjects"=testSubject$Subject,testDatawithLabels)

#Step 4: Lets work on a TRAIN data sets it has following sub tasks.

#Step 4.1: Read train data set and add them column names comes from features
trainDataX <- read.table("./data/train/X_train.txt")
colnames(trainDataX) <- as.character(features$V2)

#Step 4.2: Work on TRAIN Activities, Assign them names and convert them into labels. 
#It has following sub tasks.

#Step 4.2.1: Read Y_Test Activities, assign the name to this new column.
activityTrain <- read.table("./data/train/y_train.txt", col.names="Activity")

#Step 4.2.2: Read Activities, assign names to these new columns.
activityLabels <- read.table("./data/activity_labels.txt", col.names=c("Activity","ActivityLabels"))

#Step 4.2.3: Now merge Activity Labels with Activtiy Observations
labeledTrainDataY <- merge(activityLabels, activityTrain, by="Activity", all=TRUE)

#Step 4.3: Clip the Activities to the X data set
trainDatawithLabels <- cbind("ActivityLabels"=labeledTrainDataY$ActivityLabels,trainDataX)

#Step 4.4: Read Subject observations and, clip them to X data set
trainSubject <- read.table("./data/train/subject_train.txt", col.names="Subjects")
trainDatawithSubject <- cbind("Subjects"=trainSubject$Subject,trainDatawithLabels)


#Step 5: Mearge TRAINING and TESTING datasets.
#By this time we have Subjects, Activities (by their labels), column names to all columns
mergedDataX <- rbind(testDatawithSubject, trainDatawithSubject)


#Step 6: Filter out the columns with only mean() and std() from the main dataset.
#Step 6.1: Filter out only names of column
meanStdFeature <- features[grep("mean\\(|std\\(",features$V2,ignore.case=TRUE),]

#Adding Subject and Activties to the selected column set.
finalColumns <- c("Subjects","ActivityLabels",as.character(meanStdFeature$V2))

#Step 7: subsetting only columns "Subject", "Activities" (descriptive leabels) and columns with mean() and std()
tidyDataX <- subset(mergedDataX, select=finalColumns)

#Step 7.1: write finalData set 
write.table(tidyDataX, file="./data/tidyDataSet.txt")

#Step 8: Create Tidy data set based on the mean of all the variables by Subjects and ActivityLabels
#Step 8.1: GROUP BY Subject and ActivityLabels
group <- list(tidyDataX$Subjects,tidyDataX$ActivityLabels)

#Step 8.2: Caluclate the mean for all columns from Column index 3 onwards based on the group defined earlier.
finalDataX <- aggregate(tidyDataX[,3:67], group, mean)
# change the column names after grouping
finalColNames <- colnames(finalDataX)
finalColNames[1] <- "Subject"
finalColNames[2] <- "Activity"

colnames(finalDataX) <- finalColNames

#Step 8.3: Write finalDataSet to a file
write.table(finalDataX, file="./data/finalDataSet.txt")

#Step 8.3: Sort the final dataset based on based on the Subject and ActivityLables
sortedFinalDataX <- finalDataX[order(finalDataX$Group.1,finalDataX$Group.2),]