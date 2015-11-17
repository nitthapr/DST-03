library(data.table)
library(reshape2)
##### run_analysis is main function to load data in course projest
run_analysis <- function() {
############# Step 1 #################
## Load train data set
fileSubject <- "train/subject_train.txt"
fileActivity <- "train/y_train.txt"
fileVariable  <- "train/X_train.txt"
vSetType <- 1

dfTrain <-
        loadWCData(fileSubject, fileActivity, fileVariable, vSetType)

## Load test data set
fileSubject <- "test/subject_test.txt"
fileActivity <- "test/y_test.txt"
fileVariable  <- "test/X_test.txt"
vSetType <- 2

dfTest <-
        loadWCData(fileSubject, fileActivity, fileVariable, vSetType)

## rbind Train data set and Test Data set
dfWCdata <- rbind(dfTrain , dfTest)



############# Step 2 #################
WCcolName <- data.table(colnames(dfWCdata))
WCcolNameMean <- WCcolName[V1 %like% "mean"]
WCcolNameStd <- WCcolName[V1 %like% "std"]
WCcolNameUsed <-
        c("subject","activity", WCcolNameMean[[1]] , WCcolNameStd[[1]])

dfWCdataExtract <-
        data.frame(dfWCdata[,WCcolNameUsed])

############# Step 3 #################
## replace with descriptive activity name
dfWCdataExtract$activity[which(dfWCdataExtract$activity == 1)] <-
        "WALKING"
dfWCdataExtract$activity[which(dfWCdataExtract$activity == 2)] <-
        "WALKING_UPSTAIRS"
dfWCdataExtract$activity[which(dfWCdataExtract$activity == 3)] <-
        "WALKING_DOWNSTAIRS"
dfWCdataExtract$activity[which(dfWCdataExtract$activity == 4)] <-
        "SITTING"
dfWCdataExtract$activity[which(dfWCdataExtract$activity == 5)] <-
        "STANDING"
dfWCdataExtract$activity[which(dfWCdataExtract$activity == 6)] <-
        "LAYING"


############# Step 4 #################
WCdataExtractColName <- colnames(dfWCdataExtract)
WCdataExtractColName <- gsub("mean" , "Mean", WCdataExtractColName)
WCdataExtractColName <- gsub("std" , "Std", WCdataExtractColName)
WCdataExtractColName <-
        gsub("..." , ".", WCdataExtractColName , fixed = TRUE)
WCdataExtractColName <-
        gsub(".." , "", WCdataExtractColName , fixed = TRUE)
setnames(dfWCdataExtract, old = colnames(dfWCdataExtract), new = WCdataExtractColName)



############# Step 5 #################
## result stored in dfWCmean
WCavg <- unique(dfWCdataExtract[c("subject","activity")])
dfWCmean <- data.frame()

for (i in seq_along(WCavg$subject)) {
        iSubject <- WCavg$subject[i]
        iActivity <- WCavg$activity[i]
        idfWC <-
                dfWCdataExtract[which(dfWCdataExtract$subject == iSubject &
                                              dfWCdataExtract$activity == iActivity),]
        iMean  <- sapply(idfWC[3:81],  mean)
        ## after sapply : imean stored result in each so we have to transpost imean 
        iMeanT <- data.frame(t(iMean))
        iMeanDF <- data.frame(iSubject, iActivity, iMeanT)
        ## add mean of this subject and activity to dfWCmean
        dfWCmean <- rbind(dfWCmean, iMeanDF)

}

write.table(dfWCmean, "dfWCmean.txt" , row.names = FALSE)
dfWCmean

}


#############  loadWCData is function to load WC data from specific file location #############

loadWCData <-
        function (fileSubject , fileActivity , fileVariable, vSetType) {
                ##load library for function setname
                library(data.table)
                
                ## Read Master data : feature
                feature <- read.table("features.txt")
                
                
                ## Read all data from file
                variable <- read.table(fileVariable)
                activity <- read.table(fileActivity)
                subject  <- read.table(fileSubject)
                
                ## create dfTidyData - to store tiday data set
                ## add column subject
                dfTidyData <-
                        data.frame("subject" = subject, "activity" = activity)
                colnames(dfTidyData) <- c("subject", "activity")
                
                
                ## Add column to dfTidyData to identify test/train data set
                ## 1 for train data set
                ## 2 for test data set
                dfTidyData$setType <- vSetType
                
                
                ## Add column of variable in x file and store in dfTinyDataFinal
                ## merge data using rowname
                dfTidyData$rowname <- rownames(dfTidyData)
                variable$rowname <- rownames(variable)
                dfTidyDataFinal <- merge(dfTidyData , variable)
                ## Drop rowname column
                dfTidyDataFinal <-
                        dfTidyDataFinal[,!(names(dfTidyDataFinal) %in% c("rowname"))]
                
                ## Set column name using name listed in feature
                oldName <- colnames(dfTidyDataFinal[,4:564])
                newName <- sapply(feature$V2 , as.character)
                setnames(dfTidyDataFinal, old = oldName, new = newName)
                
                
                dfTidyDataFinal
                
        }