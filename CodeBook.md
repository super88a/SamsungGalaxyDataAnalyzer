
			Analysis Result Dataset Dictionary
(Project: Human Activity Recognition Using Smartphones Dataset)



subject				int  
	Subject or person who perform the activity
					1..30

activity      			character 
	Activity performed by the subject
					WALKING
					WALKING_UPSTAIRS
					WALKING_DOWNSTAIRS
					SITTING
					STANDING
					LAYING


	The rest of variable names are the average value of the corresponding variable
	name for each activity and each subject, with value in [-1.000000 to 1.000000].

	The original variable name can be constructed by adding "-" before and after  
	substring "mean" or "std", then adding "()" after substring "mean" or "std".

	For example:  variable name=tBodyAccmeanX
   	a. step 1: add "-" before and after substring "mean" -> tBodyAcc-mean-X
   	b. step 2: add "()" after substring "mean" -> tBodyAcc-mean()-X
	So, the original variable name is "tBodyAcc-mean()-X".

	So the description of variable tBodyAccmeanX should be:

tBodyAccmeanX            numeric [-1.000000 to 1.000000]
	Average value of tBodyAcc-mean()-X for each activity and each subject. 

tBodyAccmeanY            numeric [-1.000000 to 1.000000]
tBodyAccmeanZ            numeric [-1.000000 to 1.000000]  
tBodyAccstdX             numeric [-1.000000 to 1.000000]  	
tBodyAccstdY             numeric [-1.000000 to 1.000000]	  
tBodyAccstdZ             numeric [-1.000000 to 1.000000] 	 
tGravityAccmeanX         numeric [-1.000000 to 1.000000] 	 
tGravityAccmeanY         numeric [-1.000000 to 1.000000] 	 
tGravityAccmeanZ         numeric [-1.000000 to 1.000000]	  
tGravityAccstdX          numeric [-1.000000 to 1.000000]	  
tGravityAccstdY          numeric [-1.000000 to 1.000000]	  
tGravityAccstdZ          numeric [-1.000000 to 1.000000]	  
tBodyAccJerkmeanX        numeric [-1.000000 to 1.000000]	  
tBodyAccJerkmeanY        numeric [-1.000000 to 1.000000]	  
tBodyAccJerkmeanZ        numeric [-1.000000 to 1.000000]	  
tBodyAccJerkstdX         numeric [-1.000000 to 1.000000]	  
tBodyAccJerkstdY         numeric [-1.000000 to 1.000000]	  
tBodyAccJerkstdZ         numeric [-1.000000 to 1.000000]	  
tBodyGyromeanX           numeric [-1.000000 to 1.000000]	  
tBodyGyromeanY           numeric [-1.000000 to 1.000000]	  
tBodyGyromeanZ           numeric [-1.000000 to 1.000000]	  
tBodyGyrostdX            numeric [-1.000000 to 1.000000]	  
tBodyGyrostdY            numeric [-1.000000 to 1.000000]	  
tBodyGyrostdZ            numeric [-1.000000 to 1.000000]	  
tBodyGyroJerkmeanX       numeric [-1.000000 to 1.000000] 	 
tBodyGyroJerkmeanY       numeric [-1.000000 to 1.000000] 		
tBodyGyroJerkmeanZ       numeric [-1.000000 to 1.000000]		  
tBodyGyroJerkstdX        numeric [-1.000000 to 1.000000]		  
tBodyGyroJerkstdY        numeric [-1.000000 to 1.000000]		  
tBodyGyroJerkstdZ        numeric [-1.000000 to 1.000000]		  
tBodyAccMagmean          numeric [-1.000000 to 1.000000]		  
tBodyAccMagstd           numeric [-1.000000 to 1.000000]		  
tGravityAccMagmean       numeric [-1.000000 to 1.000000] 		 
tGravityAccMagstd        numeric [-1.000000 to 1.000000]		  
tBodyAccJerkMagmean      numeric [-1.000000 to 1.000000]		  
tBodyAccJerkMagstd       numeric [-1.000000 to 1.000000]		  
tBodyGyroMagmean         numeric [-1.000000 to 1.000000]		  
tBodyGyroMagstd          numeric [-1.000000 to 1.000000]		  
tBodyGyroJerkMagmean     numeric [-1.000000 to 1.000000] 		 
tBodyGyroJerkMagstd      numeric [-1.000000 to 1.000000]		  
fBodyAccmeanX            numeric [-1.000000 to 1.000000]		  
fBodyAccmeanY            numeric [-1.000000 to 1.000000]		  
fBodyAccmeanZ            numeric [-1.000000 to 1.000000]  
fBodyAccstdX             numeric [-1.000000 to 1.000000]  
fBodyAccstdY             numeric [-1.000000 to 1.000000]  
fBodyAccstdZ             numeric [-1.000000 to 1.000000]  
fBodyAccJerkmeanX        numeric [-1.000000 to 1.000000]  
fBodyAccJerkmeanY        numeric [-1.000000 to 1.000000]  
fBodyAccJerkmeanZ        numeric [-1.000000 to 1.000000]  
fBodyAccJerkstdX         numeric [-1.000000 to 1.000000]  
fBodyAccJerkstdY         numeric [-1.000000 to 1.000000]  
fBodyAccJerkstdZ         numeric [-1.000000 to 1.000000]  
fBodyGyromeanX           numeric [-1.000000 to 1.000000]  
fBodyGyromeanY           numeric [-1.000000 to 1.000000]  
fBodyGyromeanZ           numeric [-1.000000 to 1.000000]  
fBodyGyrostdX            numeric [-1.000000 to 1.000000]  
fBodyGyrostdY            numeric [-1.000000 to 1.000000]  
fBodyGyrostdZ            numeric [-1.000000 to 1.000000]  
fBodyAccMagmean          numeric [-1.000000 to 1.000000]  
fBodyAccMagstd           numeric [-1.000000 to 1.000000]  
fBodyBodyAccJerkMagmean  numeric [-1.000000 to 1.000000]  
fBodyBodyAccJerkMagstd   numeric [-1.000000 to 1.000000]  
fBodyBodyGyroMagmean     numeric [-1.000000 to 1.000000]  
fBodyBodyGyroMagstd      numeric [-1.000000 to 1.000000]  
fBodyBodyGyroJerkMagmean numeric [-1.000000 to 1.000000]  
fBodyBodyGyroJerkMagstd  numeric [-1.000000 to 1.000000]  


SOURCE DATASET

The source dataset is the result of "Human Activity Recognition Using 
Smartphone Dataset" monitoring activities.
 
The experiments have been carried out with a group of 30 volunteers within 
an age bracket of 19-48 years. Each person performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded 
accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular 
velocity is captured at a constant rate of 50Hz.

NOTE: A full description of the orginal data can be found in: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


DATA TRANSFORMATION

The following are the steps taken in data transformation process:
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









