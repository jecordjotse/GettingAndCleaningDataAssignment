Getting And Cleaning Data
================

## Getting and Cleaning Data

# Variables

The variables and Columns are explained here.

## subjects

This is a factor vairable of 30 volunteers each labeled with numeric
values from 1-30

## activities

This is a factor variable of 6 activities that were performed.

    ## NULL

## variabletype

This is a factor variable of ids for different feature measurements
pertaining to this final tidy
data.

| id | description                 | domain    | acceleration | instrument    | jerk   | statistic          | axis      |
| -: | :-------------------------- | :-------- | :----------- | :------------ | :----- | :----------------- | :-------- |
|  1 | tBodyAcc-mean()-X           | Time      | body         | Accelerometer | nojerk | mean               | X         |
|  2 | tBodyAcc-mean()-Y           | Time      | body         | Accelerometer | nojerk | mean               | Y         |
|  3 | tBodyAcc-mean()-Z           | Time      | body         | Accelerometer | nojerk | mean               | Z         |
|  4 | tBodyAcc-std()-X            | Time      | body         | Accelerometer | nojerk | standard Deviation | X         |
|  5 | tBodyAcc-std()-Y            | Time      | body         | Accelerometer | nojerk | standard Deviation | Y         |
|  6 | tBodyAcc-std()-Z            | Time      | body         | Accelerometer | nojerk | standard Deviation | Z         |
|  7 | tGravityAcc-mean()-X        | Time      | gravity      | Accelerometer | nojerk | mean               | X         |
|  8 | tGravityAcc-mean()-Y        | Time      | gravity      | Accelerometer | nojerk | mean               | Y         |
|  9 | tGravityAcc-mean()-Z        | Time      | gravity      | Accelerometer | nojerk | mean               | Z         |
| 10 | tGravityAcc-std()-X         | Time      | gravity      | Accelerometer | nojerk | standard Deviation | X         |
| 11 | tGravityAcc-std()-Y         | Time      | gravity      | Accelerometer | nojerk | standard Deviation | Y         |
| 12 | tGravityAcc-std()-Z         | Time      | gravity      | Accelerometer | nojerk | standard Deviation | Z         |
| 13 | tBodyAccJerk-mean()-X       | Time      | body         | Accelerometer | jerk   | mean               | X         |
| 14 | tBodyAccJerk-mean()-Y       | Time      | body         | Accelerometer | jerk   | mean               | Y         |
| 15 | tBodyAccJerk-mean()-Z       | Time      | body         | Accelerometer | jerk   | mean               | Z         |
| 16 | tBodyAccJerk-std()-X        | Time      | body         | Accelerometer | jerk   | standard Deviation | X         |
| 17 | tBodyAccJerk-std()-Y        | Time      | body         | Accelerometer | jerk   | standard Deviation | Y         |
| 18 | tBodyAccJerk-std()-Z        | Time      | body         | Accelerometer | jerk   | standard Deviation | Z         |
| 19 | tBodyGyro-mean()-X          | Time      | body         | Gyroscope     | nojerk | mean               | X         |
| 20 | tBodyGyro-mean()-Y          | Time      | body         | Gyroscope     | nojerk | mean               | Y         |
| 21 | tBodyGyro-mean()-Z          | Time      | body         | Gyroscope     | nojerk | mean               | Z         |
| 22 | tBodyGyro-std()-X           | Time      | body         | Gyroscope     | nojerk | standard Deviation | X         |
| 23 | tBodyGyro-std()-Y           | Time      | body         | Gyroscope     | nojerk | standard Deviation | Y         |
| 24 | tBodyGyro-std()-Z           | Time      | body         | Gyroscope     | nojerk | standard Deviation | Z         |
| 25 | tBodyGyroJerk-mean()-X      | Time      | body         | Gyroscope     | jerk   | mean               | X         |
| 26 | tBodyGyroJerk-mean()-Y      | Time      | body         | Gyroscope     | jerk   | mean               | Y         |
| 27 | tBodyGyroJerk-mean()-Z      | Time      | body         | Gyroscope     | jerk   | mean               | Z         |
| 28 | tBodyGyroJerk-std()-X       | Time      | body         | Gyroscope     | jerk   | standard Deviation | X         |
| 29 | tBodyGyroJerk-std()-Y       | Time      | body         | Gyroscope     | jerk   | standard Deviation | Y         |
| 30 | tBodyGyroJerk-std()-Z       | Time      | body         | Gyroscope     | jerk   | standard Deviation | Z         |
| 31 | tBodyAccMag-mean()          | Time      | body         | Accelerometer | nojerk | mean               | Magnitude |
| 32 | tBodyAccMag-std()           | Time      | body         | Accelerometer | nojerk | standard Deviation | Magnitude |
| 33 | tGravityAccMag-mean()       | Time      | gravity      | Accelerometer | nojerk | mean               | Magnitude |
| 34 | tGravityAccMag-std()        | Time      | gravity      | Accelerometer | nojerk | standard Deviation | Magnitude |
| 35 | tBodyAccJerkMag-mean()      | Time      | body         | Accelerometer | jerk   | mean               | Magnitude |
| 36 | tBodyAccJerkMag-std()       | Time      | body         | Accelerometer | jerk   | standard Deviation | Magnitude |
| 37 | tBodyGyroMag-mean()         | Time      | body         | Gyroscope     | nojerk | mean               | Magnitude |
| 38 | tBodyGyroMag-std()          | Time      | body         | Gyroscope     | nojerk | standard Deviation | Magnitude |
| 39 | tBodyGyroJerkMag-mean()     | Time      | body         | Gyroscope     | jerk   | mean               | Magnitude |
| 40 | tBodyGyroJerkMag-std()      | Time      | body         | Gyroscope     | jerk   | standard Deviation | Magnitude |
| 41 | fBodyAcc-mean()-X           | Frequency | body         | Accelerometer | nojerk | mean               | X         |
| 42 | fBodyAcc-mean()-Y           | Frequency | body         | Accelerometer | nojerk | mean               | Y         |
| 43 | fBodyAcc-mean()-Z           | Frequency | body         | Accelerometer | nojerk | mean               | Z         |
| 44 | fBodyAcc-std()-X            | Frequency | body         | Accelerometer | nojerk | standard Deviation | X         |
| 45 | fBodyAcc-std()-Y            | Frequency | body         | Accelerometer | nojerk | standard Deviation | Y         |
| 46 | fBodyAcc-std()-Z            | Frequency | body         | Accelerometer | nojerk | standard Deviation | Z         |
| 47 | fBodyAccJerk-mean()-X       | Frequency | body         | Accelerometer | jerk   | mean               | X         |
| 48 | fBodyAccJerk-mean()-Y       | Frequency | body         | Accelerometer | jerk   | mean               | Y         |
| 49 | fBodyAccJerk-mean()-Z       | Frequency | body         | Accelerometer | jerk   | mean               | Z         |
| 50 | fBodyAccJerk-std()-X        | Frequency | body         | Accelerometer | jerk   | standard Deviation | X         |
| 51 | fBodyAccJerk-std()-Y        | Frequency | body         | Accelerometer | jerk   | standard Deviation | Y         |
| 52 | fBodyAccJerk-std()-Z        | Frequency | body         | Accelerometer | jerk   | standard Deviation | Z         |
| 53 | fBodyGyro-mean()-X          | Frequency | body         | Gyroscope     | nojerk | mean               | X         |
| 54 | fBodyGyro-mean()-Y          | Frequency | body         | Gyroscope     | nojerk | mean               | Y         |
| 55 | fBodyGyro-mean()-Z          | Frequency | body         | Gyroscope     | nojerk | mean               | Z         |
| 56 | fBodyGyro-std()-X           | Frequency | body         | Gyroscope     | nojerk | standard Deviation | X         |
| 57 | fBodyGyro-std()-Y           | Frequency | body         | Gyroscope     | nojerk | standard Deviation | Y         |
| 58 | fBodyGyro-std()-Z           | Frequency | body         | Gyroscope     | nojerk | standard Deviation | Z         |
| 59 | fBodyAccMag-mean()          | Frequency | body         | Accelerometer | nojerk | mean               | Magnitude |
| 60 | fBodyAccMag-std()           | Frequency | body         | Accelerometer | nojerk | standard Deviation | Magnitude |
| 61 | fBodyBodyAccJerkMag-mean()  | Frequency | body         | Accelerometer | jerk   | mean               | Magnitude |
| 62 | fBodyBodyAccJerkMag-std()   | Frequency | body         | Accelerometer | jerk   | standard Deviation | Magnitude |
| 63 | fBodyBodyGyroMag-mean()     | Frequency | body         | Gyroscope     | nojerk | mean               | Magnitude |
| 64 | fBodyBodyGyroMag-std()      | Frequency | body         | Gyroscope     | nojerk | standard Deviation | Magnitude |
| 65 | fBodyBodyGyroJerkMag-mean() | Frequency | body         | Gyroscope     | jerk   | mean               | Magnitude |
| 66 | fBodyBodyGyroJerkMag-std()  | Frequency | body         | Gyroscope     | jerk   | standard Deviation | Magnitude |

## description

This is a short description of the specific measured feature retrieved
from features.txt data
set

## The following a broken down descriptions of the above said description variable

### domain

    ## [1] "Frequency" "Time"

### acceleration

    ## [1] "body"    "gravity"

### instrument

    ## [1] "Accelerometer" "Gyroscope"

### jerk

    ## [1] "jerk"   "nojerk"

### statistic

    ## [1] "mean"               "standard Deviation"

### axis

    ## [1] "Magnitude" "X"         "Y"         "Z"

## mean

The mean value of the groups of values for each variable, each activity
and each subject

# Summary of Data

The data collected was a dataset of various measured features from
sensors on a Samsung SII by 30 volunteers performing 6 activities. The
volunteers where broken into two sets; training and test. \#\# What was
done The two sets were merged with their respective activity label and
subject label. Then expanded the table to transform each measured
variable and its value from the columns to
rows

``` r
data.frame(name=c("Jane","John","Peter"),age=c(23,24,17),country=c("USA","GHA","ENG"))
```

    ##    name age country
    ## 1  Jane  23     USA
    ## 2  John  24     GHA
    ## 3 Peter  17     ENG

``` r
melt(data.frame(name=c("Jane","John","Peter"),age=c(23,24,17),country=c("USA","GHA","ENG")),id="name",measure.vars = c("age","country"))
```

    ## Warning: attributes are not identical across measure variables; they will be
    ## dropped

    ##    name variable value
    ## 1  Jane      age    23
    ## 2  John      age    24
    ## 3 Peter      age    17
    ## 4  Jane  country   USA
    ## 5  John  country   GHA
    ## 6 Peter  country   ENG

To Get the table narrowed so that each row focuses on one measured
variable type. Then means were calculated from grouped sets.

Code for cleaning is found in *run\_analysis.R*. Tada\! Tidy Dataset for
you analysis is saved in either *tidyData.txt* / *tidyData.csv* stored in the folder *Dataset*
