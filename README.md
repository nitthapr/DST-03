
Note: You may see I have updated on this read me file after deadline. It's because I have just came and saw that I committed the wrong file. Hope you do not mind.

---
title: "README"
author: "NitthaPr"
date: "17 NOV 2558"
output: html_document
---

# run_analysis.R
## Description

run_analysis() return Tidy dataset of average of variables -whose name include mean or std-
for each pair of subject and activity

* there is 2 function in run_analysis.R
    * run_analysis()  : main function to create expected Tidy dataset
    * loadWCData()    : is function that is used by run_analysis() to load data from test and train data set which stored in each folder 
* source data of test and train data set
    * features.txt    : must be stored in working directory
    * train data set  : There must be "train" folder in your working directory which keeps train data set including 
        * subject_train.txt
        * y_train.txt
        * X_train.txt
    * test data set   : There must be "test" folder in your working directory which keeps train data set including 
        * subject_test.txt
        * y_test.txt
        * X_test.txt


## Detail
### run_analysis()
This function follows step in course project assignment below

1. Merges the training and the test sets to create one data set : Use loadWCData() to load both train and test data in data frames then use rbind to merge data in result data frame (in code is "dfWCdata")
2. Extracts only the measurements on the mean and standard deviation for each measurement. : 
    * select only column name like %mean% or %std% to be in result set
    * include column subject and activity 
    * create result data.frame (in code is  "dfWCdataExtract") with only selected column
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. We use capital letter to separate word and "." before important word including Mean,Std,X,Y,Z to make it easier to read
    * replace column name "mean" with "Mean"
    * replace column name "std" with "Std"
    * replace column name "..." with "."
    * replace column name ".." with "" 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    * create new data frame to stored result in this step (in code is "dfWCmean")
    * for each pair of subject and activity - calculate mean of each column and add in result data frame
    
### loadWCData()
This function load data from input file location 

* input
    * fileSubject : path and file name for subject data
    * fileActivity : path and file name for activity data (y)
    * fileVariable : path and file name for variable or measurements (x)
    * vSetType    : value to specify it is test or train data set , we keep this data in case further calculation need.  ( 1 for train data set, 2 for test data set)
* Step 
    * Read all data from file
    * create dfTidyData - to store tiday data set, add column subject and activity
    * Add column to dfTidyData to identify test/train data set
    * Add column of variable in x file and store in dfTinyDataFinal
    * Set column name using name listed in feature
        
