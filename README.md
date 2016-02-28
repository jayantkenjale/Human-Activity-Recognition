# Human-Activity-Recognition
Tidy data for Human Activity Recognition by smart phones

**Link to the script run_analysis.R:**  
https://github.com/jayantkenjale/Human-Activity-Recognition/blob/master/run_analysis.R

**Link to the Codebook:**  
https://github.com/jayantkenjale/Human-Activity-Recognition/blob/master/Master-Code-Book.pdf

**Link to tidy data file:**  
https://github.com/jayantkenjale/Human-Activity-Recognition/blob/master/tidyDataSet.txt

**Link to final dataset, averaged by every subject every activity:**    
https://github.com/jayantkenjale/Human-Activity-Recognition/blob/master/finalDataSet.txt

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
Please find a PDF doucments a master code book descrbies all the provided files and the dataset. You will find following details.   
- Details about all the datasets, and how they are obtained 
- All datasets with their variables and descriptions
- Dimentions of all datasets with summary
- Units and measures used for each variable

##Why the data sets are tidy?
1. They represents only one variable per column
2. There are no duplicate variables, e.g. you will find either Activity or ActivityLable (which is descriptive) but not both at a same time.
3. All the columns are labled (Added new columns Subject and ActivityLables too have column names)
4. All other columns have new names which are described features provided in the features list.
5. It shows long narrow dataset, only relevant columns of mean() and std()


##Final datasets?
**Tidy Data**    
https://github.com/jayantkenjale/Human-Activity-Recognition/blob/master/tidyDataSet.txt  
**Final Data- means grouped by Subject and activity**  
https://github.com/jayantkenjale/Human-Activity-Recognition/blob/master/finalDataSet.txt  

Shows data per subject per activty and their means for given colummns and following all the criteria of tidy dataset.
