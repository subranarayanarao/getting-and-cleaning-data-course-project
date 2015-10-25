Getting And Cleaning Data - Course Project 

This repo contains the course project for "Getting And Cleaning Data" course that is part of Data Science specialization.

The script run_analysis.R has all the code needed for the course project. 

1. It contains one helper function loadUCIHARData.

2. It sets the working directory to c:/datascience. The code expects the data to be present in the working directory.

3. The script reads data from the test and train directories and transforms the activity code to the appropriate label using activity_labels.txt file.

4. It also merges the subject codes into the same dataset.

5. It reads the variable names from features.txt and applies those as column names to the data frame created in step 3 earlier.

6. The script then combines both test and train datasets, keeps only variables that are for mean and standard deviation.

7. The final step is to calculate the mean for each subject and activity combination. The result is saved as a .txt file.

8. The output is saved as step5_tidy_data.txt in the working directory.