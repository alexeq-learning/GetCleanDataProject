# Data Code Book

## Overview
This document contains description of tidy data set, obtained by averaging data from sensors 
of waist-mounted smartphones carried by 30 subjects while performing activities of daily living.

More information about original dataset can be obtained at [UC Irvine Machine Learning Repository]
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Transformations
Below is a list of transformations performed on the original data set in order to obtain this tidy data:
* All data (train and test) is merged into a single data set
* Only "Mean" and "Standard Devation" variables are selected
* Activity types are represented as factors with readable labels
* Column labels are expanded for easier understanding
* All sensor data samples are averaged per each subject and activity to create tidy data set

## Description
Data set contains 68 columns: 2 column for subject and activity type and 66 sensor data columns.
Java-style identifiers (camel-case with first lower letter) are used as column labels for easier reading.

Subjects are represented as factors from 1 to 30.

Activities consist of 6 different types:
* **WALKING** 
* **WALKING_UPSTAIRS** 
* **WALKING_DOWNSTAIRS**
* **SITTING** 
* **STANDING** 
* **LAYING**

All sensor columns contain double values in the range [-1, 1] and are labeled using the pattern:

    (<time>|<frequency>)<sensor>[<XYZ-axis>](<Mean>|<StdDev>)

* `<time>` - time domain signals
* `<frequency>` - frequency domain signals
* `<sensor>` - sensor type
* `<XYZ-axis>` - sensor axis (one of X, Y, or Z)
* `<Mean>` - mean value
* `<StdDev>` - standard devation 

## Columns

Below is the list of all columns in the data set:
* subject                                      
* activity                                     
* timeBodyAccelerometerXMean                   
* timeBodyAccelerometerYMean                   
* timeBodyAccelerometerZMean                   
* timeBodyAccelerometerXStdDev                 
* timeBodyAccelerometerYStdDev                 
* timeBodyAccelerometerZStdDev                 
* timeGravityAccelerometerXMean                
* timeGravityAccelerometerYMean                
* timeGravityAccelerometerZMean                
* timeGravityAccelerometerXStdDev              
* timeGravityAccelerometerYStdDev              
* timeGravityAccelerometerZStdDev              
* timeBodyAccelerometerJerkXMean               
* timeBodyAccelerometerJerkYMean               
* timeBodyAccelerometerJerkZMean               
* timeBodyAccelerometerJerkXStdDev             
* timeBodyAccelerometerJerkYStdDev             
* timeBodyAccelerometerJerkZStdDev             
* timeBodyGyroscopeXMean                       
* timeBodyGyroscopeYMean                       
* timeBodyGyroscopeZMean                       
* timeBodyGyroscopeXStdDev                     
* timeBodyGyroscopeYStdDev                     
* timeBodyGyroscopeZStdDev                     
* timeBodyGyroscopeJerkXMean                   
* timeBodyGyroscopeJerkYMean                   
* timeBodyGyroscopeJerkZMean                   
* timeBodyGyroscopeJerkXStdDev                 
* timeBodyGyroscopeJerkYStdDev                 
* timeBodyGyroscopeJerkZStdDev                 
* timeBodyAccelerometerMagnitudeMean           
* timeBodyAccelerometerMagnitudeStdDev         
* timeGravityAccelerometerMagnitudeMean        
* timeGravityAccelerometerMagnitudeStdDev      
* timeBodyAccelerometerJerkMagnitudeMean       
* timeBodyAccelerometerJerkMagnitudeStdDev     
* timeBodyGyroscopeMagnitudeMean               
* timeBodyGyroscopeMagnitudeStdDev             
* timeBodyGyroscopeJerkMagnitudeMean           
* timeBodyGyroscopeJerkMagnitudeStdDev         
* frequencyBodyAccelerometerXMean              
* frequencyBodyAccelerometerYMean              
* frequencyBodyAccelerometerZMean              
* frequencyBodyAccelerometerXStdDev            
* frequencyBodyAccelerometerYStdDev            
* frequencyBodyAccelerometerZStdDev            
* frequencyBodyAccelerometerJerkXMean          
* frequencyBodyAccelerometerJerkYMean          
* frequencyBodyAccelerometerJerkZMean          
* frequencyBodyAccelerometerJerkXStdDev        
* frequencyBodyAccelerometerJerkYStdDev        
* frequencyBodyAccelerometerJerkZStdDev        
* frequencyBodyGyroscopeXMean                  
* frequencyBodyGyroscopeYMean                  
* frequencyBodyGyroscopeZMean                  
* frequencyBodyGyroscopeXStdDev                
* frequencyBodyGyroscopeYStdDev                
* frequencyBodyGyroscopeZStdDev                
* frequencyBodyAccelerometerMagnitudeMean      
* frequencyBodyAccelerometerMagnitudeStdDev    
* frequencyBodyAccelerometerJerkMagnitudeMean  
* frequencyBodyAccelerometerJerkMagnitudeStdDev
* frequencyBodyGyroscopeMagnitudeMean          
* frequencyBodyGyroscopeMagnitudeStdDev        
* frequencyBodyGyroscopeJerkMagnitudeMean      
* frequencyBodyGyroscopeJerkMagnitudeStdDev 
