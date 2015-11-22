---
title: "Code Book"
author: "NitthaPr"
output: html_document
---
# run_analysis.R
## Description
dfWCmean.txt is a data created by run_analysis.R to stored  independent tidy data set with the average of each variable for each activity and each subject.

## Raw data
Feature of variable (x), Subject , Activity(y)

## Processed data
### subject and activity 

* subject       : subject id from subject_train.txt or subject_test.txt 
* activity      : activity from y_train.txt or y_test.txt , numeric value was replaced by descrivtive activity name below 
    * 1 WALKING
    * 2 WALKING_UPSTAIRS
    * 3 WALKING_DOWNSTAIRS
    * 4 SITTING
    * 5 STANDING
    * 6 LAYING

### Variables( Features )
Variables names represents Features' names. Below give information about which column we choosed from source file for each variable. About Features name, read mrore in topic "Feature's name"
        
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

## Feature's name
Feature Selection 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

