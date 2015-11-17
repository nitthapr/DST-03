---
title: "Code Book"
author: "NitthaPr"
date: "17 ¾ÄÈ¨Ô¡ÒÂ¹ 2558"
output: html_document
---
# run_analysis.R
## Description
dfWCmean.txt is a data created by run_analysis.R to stored  independent tidy data set with the average of each variable for each activity and each subject.

## Field list

* subject       : subject from subject_train.txt or subject_test.txt 
* activity      : activity from y_train.txt or y_test.txt , numeric value was replaced by descrivtive activity name below 
    * 1 WALKING
    * 2 WALKING_UPSTAIRS
    * 3 WALKING_DOWNSTAIRS
    * 4 SITTING
    * 5 STANDING
    * 6 LAYING
* 	tBodyAcc.Mean.X	: represent mean of  column number 	1	from variable file ( x)
* 	tBodyAcc.Mean.Y	: represent mean of  column number 	2	from variable file ( x)
* 	tBodyAcc.Mean.Z	: represent mean of  column number 	3	from variable file ( x)
* 	tGravityAcc.Mean.X	: represent mean of  column number 	41	from variable file ( x)
* 	tGravityAcc.Mean.Y	: represent mean of  column number 	42	from variable file ( x)
* 	tGravityAcc.Mean.Z	: represent mean of  column number 	43	from variable file ( x)
* 	tBodyAccJerk.Mean.X	: represent mean of  column number 	81	from variable file ( x)
* 	tBodyAccJerk.Mean.Y	: represent mean of  column number 	82	from variable file ( x)
* 	tBodyAccJerk.Mean.Z	: represent mean of  column number 	83	from variable file ( x)
* 	tBodyGyro.Mean.X	: represent mean of  column number 	121	from variable file ( x)
* 	tBodyGyro.Mean.Y	: represent mean of  column number 	122	from variable file ( x)
* 	tBodyGyro.Mean.Z	: represent mean of  column number 	123	from variable file ( x)
* 	tBodyGyroJerk.Mean.X	: represent mean of  column number 	161	from variable file ( x)
* 	tBodyGyroJerk.Mean.Y	: represent mean of  column number 	162	from variable file ( x)
* 	tBodyGyroJerk.Mean.Z	: represent mean of  column number 	163	from variable file ( x)
* 	tBodyAccMag.Mean	: represent mean of  column number 	201	from variable file ( x)
* 	tGravityAccMag.Mean	: represent mean of  column number 	214	from variable file ( x)
* 	tBodyAccJerkMag.Mean	: represent mean of  column number 	227	from variable file ( x)
* 	tBodyGyroMag.Mean	: represent mean of  column number 	240	from variable file ( x)
* 	tBodyGyroJerkMag.Mean	: represent mean of  column number 	253	from variable file ( x)
* 	fBodyAcc.Mean.X	: represent mean of  column number 	266	from variable file ( x)
* 	fBodyAcc.Mean.Y	: represent mean of  column number 	267	from variable file ( x)
* 	fBodyAcc.Mean.Z	: represent mean of  column number 	268	from variable file ( x)
* 	fBodyAcc.MeanFreq.X	: represent mean of  column number 	294	from variable file ( x)
* 	fBodyAcc.MeanFreq.Y	: represent mean of  column number 	295	from variable file ( x)
* 	fBodyAcc.MeanFreq.Z	: represent mean of  column number 	296	from variable file ( x)
* 	fBodyAccJerk.Mean.X	: represent mean of  column number 	345	from variable file ( x)
* 	fBodyAccJerk.Mean.Y	: represent mean of  column number 	346	from variable file ( x)
* 	fBodyAccJerk.Mean.Z	: represent mean of  column number 	347	from variable file ( x)
* 	fBodyAccJerk.MeanFreq.X	: represent mean of  column number 	373	from variable file ( x)
* 	fBodyAccJerk.MeanFreq.Y	: represent mean of  column number 	374	from variable file ( x)
* 	fBodyAccJerk.MeanFreq.Z	: represent mean of  column number 	375	from variable file ( x)
* 	fBodyGyro.Mean.X	: represent mean of  column number 	424	from variable file ( x)
* 	fBodyGyro.Mean.Y	: represent mean of  column number 	425	from variable file ( x)
* 	fBodyGyro.Mean.Z	: represent mean of  column number 	426	from variable file ( x)
* 	fBodyGyro.MeanFreq.X	: represent mean of  column number 	452	from variable file ( x)
* 	fBodyGyro.MeanFreq.Y	: represent mean of  column number 	453	from variable file ( x)
* 	fBodyGyro.MeanFreq.Z	: represent mean of  column number 	454	from variable file ( x)
* 	fBodyAccMag.Mean	: represent mean of  column number 	503	from variable file ( x)
* 	fBodyAccMag.MeanFreq	: represent mean of  column number 	513	from variable file ( x)
* 	fBodyBodyAccJerkMag.Mean	: represent mean of  column number 	516	from variable file ( x)
* 	fBodyBodyAccJerkMag.MeanFreq	: represent mean of  column number 	526	from variable file ( x)
* 	fBodyBodyGyroMag.Mean	: represent mean of  column number 	529	from variable file ( x)
* 	fBodyBodyGyroMag.MeanFreq	: represent mean of  column number 	539	from variable file ( x)
* 	fBodyBodyGyroJerkMag.Mean	: represent mean of  column number 	542	from variable file ( x)
* 	fBodyBodyGyroJerkMag.MeanFreq	: represent mean of  column number 	552	from variable file ( x)
* 	tBodyAcc.Std.X	: represent mean of  column number 	4	from variable file ( x)
* 	tBodyAcc.Std.Y	: represent mean of  column number 	5	from variable file ( x)
* 	tBodyAcc.Std.Z	: represent mean of  column number 	6	from variable file ( x)
* 	tGravityAcc.Std.X	: represent mean of  column number 	44	from variable file ( x)
* 	tGravityAcc.Std.Y	: represent mean of  column number 	45	from variable file ( x)
* 	tGravityAcc.Std.Z	: represent mean of  column number 	46	from variable file ( x)
* 	tBodyAccJerk.Std.X	: represent mean of  column number 	84	from variable file ( x)
* 	tBodyAccJerk.Std.Y	: represent mean of  column number 	85	from variable file ( x)
* 	tBodyAccJerk.Std.Z	: represent mean of  column number 	86	from variable file ( x)
* 	tBodyGyro.Std.X	: represent mean of  column number 	124	from variable file ( x)
* 	tBodyGyro.Std.Y	: represent mean of  column number 	125	from variable file ( x)
* 	tBodyGyro.Std.Z	: represent mean of  column number 	126	from variable file ( x)
* 	tBodyGyroJerk.Std.X	: represent mean of  column number 	164	from variable file ( x)
* 	tBodyGyroJerk.Std.Y	: represent mean of  column number 	165	from variable file ( x)
* 	tBodyGyroJerk.Std.Z	: represent mean of  column number 	166	from variable file ( x)
* 	tBodyAccMag.Std	: represent mean of  column number 	202	from variable file ( x)
* 	tGravityAccMag.Std	: represent mean of  column number 	215	from variable file ( x)
* 	tBodyAccJerkMag.Std	: represent mean of  column number 	228	from variable file ( x)
* 	tBodyGyroMag.Std	: represent mean of  column number 	241	from variable file ( x)
* 	tBodyGyroJerkMag.Std	: represent mean of  column number 	254	from variable file ( x)
* 	fBodyAcc.Std.X	: represent mean of  column number 	269	from variable file ( x)
* 	fBodyAcc.Std.Y	: represent mean of  column number 	270	from variable file ( x)
* 	fBodyAcc.Std.Z	: represent mean of  column number 	271	from variable file ( x)
* 	fBodyAccJerk.Std.X	: represent mean of  column number 	348	from variable file ( x)
* 	fBodyAccJerk.Std.Y	: represent mean of  column number 	349	from variable file ( x)
* 	fBodyAccJerk.Std.Z	: represent mean of  column number 	350	from variable file ( x)
* 	fBodyGyro.Std.X	: represent mean of  column number 	427	from variable file ( x)
* 	fBodyGyro.Std.Y	: represent mean of  column number 	428	from variable file ( x)
* 	fBodyGyro.Std.Z	: represent mean of  column number 	429	from variable file ( x)
* 	fBodyAccMag.Std	: represent mean of  column number 	504	from variable file ( x)
* 	fBodyBodyAccJerkMag.Std	: represent mean of  column number 	517	from variable file ( x)
* 	fBodyBodyGyroMag.Std	: represent mean of  column number 	530	from variable file ( x)
* 	fBodyBodyGyroJerkMag.Std	: represent mean of  column number 	543	from variable file ( x)

