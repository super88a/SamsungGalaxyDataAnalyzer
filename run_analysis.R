# ##############################
# run_analysis.R
# This R script reads Samsung Galaxy S accelerometer data.
# It merges, extracts and replace data according to a mapping table.
# Finally it summarize data by activity and subject and
#   save the result in file "analysis_result.txt".
# More information about data and script:
#   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# ##############################


# ##############################
# read and merge train dataset and test dataset
# ##############################

# read train dataset and train label
train_dataset  = read.table("./train/X_train.txt", header=FALSE)

# read test dataset and test label
test_dataset   = read.table("./test/X_test.txt", header=FALSE)

# merge the train dataset and the test dataset into one dataset 
dataset        = rbind(train_dataset, test_dataset)	


# ##############################
# extracts only the measurements on the mean and standard deviation
# ##############################

# find feature names which contains string "mean()" or "std()"
features = read.table("./features.txt", header=FALSE)
mean_std = grepl(".*mean\\(\\)|std\\(\\).*", features$V2)  

# pick the corresponding columns in dataset 
meanstd_dataset = dataset[mean_std]


# ##############################
# change dataset column names with 
#   descriptive variable name (tBodyAcc-meanX, etc.)
# ##############################

# create a vector of feature names
column_names = c(as.character(features$V2[mean_std]))

# remove character "(", ")" or "-" from feature names
column_names = gsub("[\\(\\)\\-]","",column_names)            

# use the "clean" feature names as dataset column names
colnames(meanstd_dataset) = column_names


# ##############################
# add "activity" column to dataset
# ##############################

# read train_activity and test_activity dataset
train_activity   = read.table("./train/y_train.txt", header=FALSE)
test_activity    = read.table("./test/y_test.txt", header=FALSE)

# merge the train_activity and the test_activity into one dataset 
activity_dataset = rbind(train_activity, test_activity)             
           
# read activity labels (WALKING, WALKING_UPSTAIR, etc.)
activity_labels  = read.table("./activity_labels.txt", header=FALSE)

# create activity factor    
activity_v  = c(activity_dataset$V1)                          
activity_f  = factor(activity_v)

# create activity factor with values as "WALKING", "WALKING_UPSTAIR", etc.
activity_f2 = factor(activity_f, labels=c(as.character(activity_labels$V2)) )

# convert the activity factor to a data.frame of one column named "activity"
activity_dataset = data.frame( activity = activity_f2 ) 

# add the activity dataset as a new column to the main dataset
meanstd_dataset  = cbind(meanstd_dataset, activity_dataset)    


# ##############################
# add "subject" column to dataset
# ##############################

# read train subject and test subject
subject_train   = read.table("./train/subject_train.txt", header=FALSE)    
subject_test    = read.table("./test/subject_test.txt", header=FALSE)

# merge train subject and test subject into one dataset
subject_dataset = rbind(subject_train, subject_test)    

# change column name to "subject"
colnames(subject_dataset) <- "subject"

# add "subject" as a new column to main dataset
meanstd_dataset = cbind(meanstd_dataset, subject_dataset)   


# ##############################
# create a tidy dataset with average of each variable for 
#    each activity and each subject
# ##############################

# calculate the average value of each activity (column 1 to 66)   
dataset2 = aggregate(meanstd_dataset[,1:66], 
           by=list(meanstd_dataset$subject, meanstd_dataset$activity ), 
           FUN=mean)

# round the numeric value to 6 digits decimal
dataset2[,-1:-2] = format( round(dataset2[,-1:-2],digits=6), nsmall=6 )           

# rename the first two columns to "subject" and "activity"
colnames(dataset2)[1] = "subject"
colnames(dataset2)[2] = "activity"

# save tidy dataset to a file
file = "./analysis_result.txt"
write.table(dataset2, file, row.names=FALSE)

# ### end ###

