Feature Selection 
=================
* There are a big set of data collected from the accelerometers from the Samsung Galaxy S smartphone, by subjects doing different activities. I pretend to summarize this data.

* Raw data is the features selected for the database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. All the variables and the description of the experiment are descrived in the following zip[link]https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.

The source data for the project is:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip



* Processed data:
The data has been joined and selected only the measurement of the mean and standard deviation for each measurement.
The activity was changed from (1:6) value to the description of the activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING)
And get the mean of the selected data grouped by subjects and activity.

* The file created contains the following list of variables:
<PRE>
activity
subjects
tbodyacc.mean.x
tbodyacc.mean.y
tbodyacc.mean.z
tbodyacc.std.x
tbodyacc.std.y
tbodyacc.std.z
tgravityacc.mean.x
tgravityacc.mean.y
tgravityacc.mean.z
tgravityacc.std.x
tgravityacc.std.y
tgravityacc.std.z
tbodyaccjerk.mean.x
tbodyaccjerk.mean.y
tbodyaccjerk.mean.z
tbodyaccjerk.std.x
tbodyaccjerk.std.y
tbodyaccjerk.std.z
tbodygyro.mean.x
tbodygyro.mean.y
tbodygyro.mean.z
tbodygyro.std.x
tbodygyro.std.y
tbodygyro.std.z
tbodygyrojerk.mean.x
tbodygyrojerk.mean.y
tbodygyrojerk.mean.z
tbodygyrojerk.std.x
tbodygyrojerk.std.y
tbodygyrojerk.std.z
tbodyaccmag.mean
tbodyaccmag.std
tgravityaccmag.mean
tgravityaccmag.std
tbodyaccjerkmag.mean
tbodyaccjerkmag.std
tbodygyromag.mean
tbodygyromag.std
tbodygyrojerkmag.mean
tbodygyrojerkmag.std
fbodyacc.mean.x
fbodyacc.mean.y
fbodyacc.mean.z
fbodyacc.std.x
fbodyacc.std.y
fbodyacc.std.z
fbodyaccjerk.mean.x
fbodyaccjerk.mean.y
fbodyaccjerk.mean.z
fbodyaccjerk.std.x
fbodyaccjerk.std.y
fbodyaccjerk.std.z
fbodygyro.mean.x
fbodygyro.mean.y
fbodygyro.mean.z
fbodygyro.std.x
fbodygyro.std.y
fbodygyro.std.z
fbodyaccmag.mean
fbodyaccmag.std
fbodybodyaccjerkmag.mean
fbodybodyaccjerkmag.std
fbodybodygyromag.mean
fbodybodygyromag.std
fbodybodygyrojerkmag.mean
fbodybodygyrojerkmag.std
</PRE>
