# Data Science Capstone Project: Word Prediction

This README file describes the algorithm and all files necessary to satisfy the shinyApps requirement for the Data Science Capstone final 
project.

### Project Requirements

The goal of this exercise is to create a product to highlight the prediction algorithm that you have built and to provide an interface that can be accessed by others. 
For this project you must submit:

*  A Shiny app that takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word.
*  A slide deck consisting of no more than 5 slides created with R Studio Presenter pitching your algorithm and app as if you were presenting to your boss or an investor.
   This repository contains all the files necessary to satisfy the shinyApps requirement

### SwiftKey Data

The data is from a corpus called HC Corpora (www.corpora.heliohost.org). 
In this capstone we will be applying data science in the area of natural language processing. 
The data used for this project can be accessed [here](https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip)

### Repository Files

*  prepareData.R: this file takes the raw data and creates the file 'NGramSortedFinal.txt'
*  NGramSortedFinal.txt: contains four concatenated tables and the associated NGram counts
*  divideNGram.RData: contains positions used to divide the table (from NGramSortedFinal.txt) into look up tables
*  NGramSortedFinal.txt and divideNGram.RData are used to load and divide the tables used for searching for a match.
*  redNextWord.R: this is the main function called by server.R for the application interface
   This file searches for matches based on the user input, implements "Stupid Backoff" if necessary, and calculates a penalty for the probability score
*  global.R: loads the lookup tables to search for matches, loads additional libraries and functions
*  server.R: code necessary to access user input, calls functions necessary to predict the next word, and return results to the user interface
*  ui.R: code necessary for the application interface

