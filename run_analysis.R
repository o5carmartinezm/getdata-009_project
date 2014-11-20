library(dplyr)

activity_labels <- read.csv("activity_labels.txt", sep = "", header = FALSE)
features <- read.csv("features.txt", sep = "", header = FALSE)

#### Test data    
    
subject_test <- read.csv("test/subject_test.txt", header = FALSE)
X_test <- read.csv("test/X_test.txt",sep = "", header = FALSE)
y_test <- read.csv("test/y_test.txt", header = FALSE)
    
#### Train data    

subject_train <- read.csv("train/subject_train.txt", header = FALSE)
X_train <- read.csv("train/X_train.txt", sep = "", header = FALSE)
y_train <- read.csv("train/y_train.txt", header = FALSE)

# Join X_train and X_test the data.frames in one
allData = rbind(X_train, X_test)
allData <- tbl_df(allData)

# Select the columns related with mean and std of the measures
columns <- c(grep("mean[(]", features$V2),  grep("std", features$V2))
columns <- sort(as.numeric(columns))
selectedData <- select(allData, columns)

# Rename the features name taking off special characters
colNames <- gsub("[()]","",features[columns,2])
colNames <- make.names(colNames, unique = TRUE, allow_= TRUE)
#colNames <- sub("BodyBody", "newname", colNames)
names(selectedData) <- colNames

# Add subjects and activities to the data.frame
subjects <- rbind(subject_train, subject_test)
names(subjects) <- "subjects"
y <- rbind(y_train, y_test)
names(y) <- "activity"

selectedData <- cbind(selectedData, subjects, y)

# Change the activity value to the name of the activity
selectedData$activity <- activity_labels$V2[selectedData$activity]

# Create the data.frame with the mean on each variable grouped by subjects and activity
# Create groups by subject and activity
grouped <- group_by(selectedData, activity, subjects)
summariseGroupedData <- summarise_each(grouped, funs(mean))
    
write.table(summariseGroupedData, file = "result_run_analysis.txt", row.names = FALSE)

    
