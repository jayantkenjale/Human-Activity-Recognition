# Human-Activity-Recognition
Tidy data for Human Activity Recognition by smart phones

**Link to the script which cleans the data:**  
https://github.com/jayantkenjale/Human-Activity-Recognition/blob/master/run_analysis.R

**Link to the Codebook:**  
https://github.com/jayantkenjale/Human-Activity-Recognition/blob/master/Master-Code-Book.pdf

**Link to tidy data file**
https://github.com/jayantkenjale/Human-Activity-Recognition/blob/master/tidyDataSet.txt

****
##What you can find in Script?
run_analysis.R script is self explanatory, where all the steps are described in the code run_analysis.R. Some important steps are described here are mapped to the steps coded in the run_analysis.R file.  

Some of the most important steps below and refer them in the code run_analysis.R. (Link provided above)  

1. Merges the training and the test sets to create one data set. (Ref step 1 to step 5)
2. Extracts only the measurements on the mean and standard deviation for each measurement. (Ref Step 6)
3. Uses descriptive activity names to name the activities in the data set (Ref Step 3.2.2 and Step 4.2.2)
4. Appropriately labels the data set with descriptive variable names. (Ref Step 2 and Step 3 )
5. Tidy data set created (Ref Step 7). Please find the tile attached tidyDataSet.txt 
6. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. (Ref Step 8, which is step 8.1 to 8.5)


##What you can find in Codebook?
- Details about all the datasets, and how they are obtained 
- All datasets their variables
- Dimentions of all datasets with summary
- Units and measures used for each variable


Index of All Observation and Meta data files provided
Description to All Variables in each file
Dimensions of each data set, to know how that fits with other datasets
Summaries of all Datasets

Final Tidy Dataset
Check in file <FILE_NAME> in this repository

Tidy Data sets with Averages of observations per SUBJECT per ACTIVITY 
Check in file <AVERAGE_FILE_NAME> in this repository

Explanation to the steps in run_analysis.R

1.	Merge training and Test data set – 
2.	Extract Only mean() and std() for each measurement
3.	Descriptive activity names in dataset
4.	Label the dataset with descriptive variable names
5.	From Step 4 create second independent with average of each variable/each activity and each Subject.
