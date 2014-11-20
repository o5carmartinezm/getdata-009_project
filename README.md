run_analysis.R
==============

* Repository with the R script (run_analysis.R) used to complete the curse project Getting and Cleaning Data.
The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. This repo explains how all of the scripts work and how they are connected.  

* You should load the script in R:
<pre>source("run_analysis.R")</pre>

**Assumptions:** The scpritp and the data should be in the same directory. That directory must have the following structure:

<pre>
activity_labels.txt
features_info.txt
features.txt
test
  y_test.txt
  subject_test.txt
  X_test.txt
train
  subject_train.txt
  X_train.txt
  y_train.txt
</pre>

The script will do the following: 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Name the activities in the data set
* Labels the data set with descriptive variable names. 
* Creates a tidy data set with the average of each variable for each activity and each subject.

* The final result is the file "nombre fichero" places in the same directory
