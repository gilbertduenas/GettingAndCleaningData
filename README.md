# Getting And Cleaning Data

This repository contains the R script and files for the Peer Assessment of Coursera's Getting and Cleaning Data course.

## Files

CodeBook.md - Describes the variables, the data, and any transformations or work performed to clean up the data.

README.md - This file.

run_analysis.R - Script to perform analysis.

dataTidy.txt - Output file generated from run_analysis.R

## Actions performed by script

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.