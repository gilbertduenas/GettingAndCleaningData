---
title: "Getting And Cleaning Data: Peer Assessment"
author: "Gilbert Duenas"
date: "Thursday, June 19, 2015"
output: dataTidy.txt
---

## Introduction

List of data text files

- subject_train.txt
- subject_test.txt
- X_train.txt
- X_test.txt
- y_train
- y_test.txt
- features.txt
- activity_labels.txt

List of variables

- trainSubject
- testSubject
- dataSetSubject - combination of trainSubject and testSubject
- trainX
- testX
- dataSetX - combination of trainX and testX
- trainY
- testY
- dataSetY - combination of trainY and testY


## Functions and Transformations

- grep() is used to extract the mean and standard deviation
- cbind() is used to group extracted data sets into a complete set
- ddply() is used to create the final data text