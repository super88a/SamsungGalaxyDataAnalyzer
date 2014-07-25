
Human Activity Recognition Using Smartphones Dataset
Analysis Script
===============

### Introduction

This is the proposed R script for analysing Smartphones Dataset.

The smartphone dataset is data of 3-axial linear acceleration and 3-axial angular velocity
read from smartphone sensor (accelerometer and gyroscope), being worn on waist by 30 persons. 

The smartphones dataset consist of:
- 'features_info.txt'  : Shows information about the variables used on the feature vector.
- 'features.txt'       : List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt'  : Training set.
- 'train/y_train.txt'  : Training labels.
- 'test/X_test.txt'    : Test set.
- 'test/y_test.txt'    : Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.
 
- 'train/subject_train.txt': Each row identifies the subject who performed 
      the activity for each window sample. Its range is from 1 to 30. 
      
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal 
      from the smartphone accelerometer X axis in standard gravity units 'g'. 
      Every row shows a 128 element vector. The same description applies for 
      the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
      
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal 
      obtained by subtracting the gravity from the total acceleration. 
      
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector 
      measured by the gyroscope for each window sample. The units are radians/second.

More information about smartphone dataset and the experiment can be found in:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


### Data Transformation

The 'run_analysis.R' script executes the following transformation steps:

a. Merges the training and the test data sets to create one data set.

b. Extracts only the measurements on the mean and standard deviation for each measurement. 
   This is done by finding feature names which contain substring "mean()" or "std()".
   
c. Use descriptive activity names to name the activities in the data set, 
   that is by replacing activity code (1,2,etc.) with corresponding activity names
   (WALKING, SITTING, etc.).
    
d. Labels the data set with descriptive variable names, by replacing the dataset's
   column names with the corresponding feature names. 
   In addition, we also remove character "(", ")" and "-" in order to make
   it easier for subsequent process.

e. Creates analysis result data set with the average of each variable for 
   each activity and each subject.  

f. Finally, save the result data set to file "analysis_result.txt".
   

### Running the Script

To run the script:
a. Open R command line interface or R Studio, and set the working directory
   to where you put the experiment/smartphone dataset.

b. Run the script using command: source("run_analysis.R")

c. Check the result file "analysis_result.txt" in the working directory.   


### Repository Contents

This repository includes the following files:

- 'README.md'

- 'run_analysis.R': the R script doing the data analysis.

- 'CodeBook.md': the data dictionary of the result data set.



