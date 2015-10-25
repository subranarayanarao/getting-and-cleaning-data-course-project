Study Design:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. The body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these signals was calculated using the Euclidean norm. The frequency domain signals were calculated by applying a Fast Fourier Transform (FFT). The dataset obtained from the study contained 561 measurements for each subject and activity.

Summary Choices made:
The raw data obtained from the study contained the subject IDs, measurements and the activity labels in separate files. These were combined to produce one dataset that can provide the measurements for each subject and activity. From the 561 measurements obtained from the study, only the mean and standard deviation values were used to produce the tidy data set. Finally, an average of each of these measurements is calculated for each subject and activity combination to produce the tidy data set. This data set contains 180 rows and 68 columns.

Variables in this dataset:
1. Subject - Identifier for each of the subjects that carried out the experiment, a range of 1 to 30

2. Activity - the activity performed by the subject, one of the following
* WALKING
* WALKING_UPSTARIS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

3. tBodyAcc-mean()-X: Mean of time domain body acceleration signal along the X axis, values are normalized and bounded within [-1,1] 

4. tBodyAcc-mean()-Y: Mean of time domain body acceleration signal along the Y axis, values are normalized and bounded within [-1,1] 

5. tBodyAcc-mean()-Z: Mean of time domain body acceleration signal along the Z axis, values are normalized and bounded within [-1,1] 

6. tGravityAcc-mean()-X: Mean of time domain gravity acceleration signal along the X axis, values are normalized and bounded within [-1,1] 

7. tGravityAcc-mean()-Y: Mean of time domain gravity acceleration signal along the Y axis, values are normalized and bounded within [-1,1] 

8. tGravityAcc-mean()-Z: Mean of time domain gravity acceleration signal along the Z axis, values are normalized and bounded within [-1,1] 

9. tBodyAccJerk-mean()-X: Mean of time domain body acceleration jerk signal along the X axis, values are normalized and bounded within [-1,1]

10. tBodyAccJerk-mean()-Y: Mean of time domain body acceleration jerk signal along the Y axis, values are normalized and bounded within [-1,1] 

11. tBodyAccJerk-mean()-Z: Mean of time domain body acceleration jerk signal along the Z axis, values are normalized and bounded within [-1,1] 

12. tBodyGyro-mean()-X: Mean of time domain body gyro signal along the X axis, values are normalized and bounded within [-1,1] 

13. tBodyGyro-mean()-Y: Mean of time domain body gyro signal along the Y axis, values are normalized and bounded within [-1,1] 

14. tBodyGyro-mean()-Z: Mean of time domain body gyro signal along the Z axis, values are normalized and bounded within [-1,1] 

15. tBodyGyroJerk-mean()-X: Mean of time domain body gyro jerk signal along the X axis, values are normalized and bounded within [-1,1] 

16. tBodyGyroJerk-mean()-Y: Mean of time domain body gyro jerk signal along the Y axis, values are normalized and bounded within [-1,1] 

17. tBodyGyroJerk-mean()-Z: Mean of time domain body gyro jerk signal along the Z axis, values are normalized and bounded within [-1,1] 

18. tBodyAccMag-mean(): Mean of time domain body acceleration magnitude, values are normalized and bounded within [-1,1] 

19. tGravityAccMag-mean(): Mean of time domain gravity acceleration magnitude, values are normalized and bounded within [-1,1] 

20. tBodyAccJerkMag-mean(): Mean of time domain body acceleration jerk magnitude, values are normalized and bounded within [-1,1] 

21. tBodyGyroMag-mean(): Mean of time domain body gyro magnitude, values are normalized and bounded within [-1,1]

22. tBodyGyroJerkMag-mean(): Mean of time domain body gyro jerk magnitude, values are normalized and bounded within [-1,1] 

23. fBodyAcc-mean()-X: Mean of frequency domain body acceleration along the X axis, values are normalized and bounded within [-1,1] 

24. fBodyAcc-mean()-Y: Mean of frequency domain body acceleration along the Y axis, values are normalized and bounded within [-1,1] 

25. fBodyAcc-mean()-Z : Mean of frequency domain body acceleration along the Z axis, values are normalized and bounded within [-1,1] 

26. fBodyAccJerk-mean()-X: Mean of frequency domain body acceleration jerk signal along the X axis, values are normalized and bounded within [-1,1] 

27. fBodyAccJerk-mean()-Y: Mean of frequency domain body acceleration jerk signal along the Y axis, values are normalized and bounded within [-1,1] 

28. fBodyAccJerk-mean()-Z: Mean of frequency domain body acceleration jerk signal along the Z axis, values are normalized and bounded within [-1,1] 

29. fBodyGyro-mean()-X: Mean of frequency domain body gyro signal along the X axis, values are normalized and bounded within [-1,1] 

30. fBodyGyro-mean()-Y: Mean of frequency domain body gyro signal along the Y axis, values are normalized and bounded within [-1,1] 

31. fBodyGyro-mean()-Z: Mean of frequency domain body gyro signal along the Z axis, values are normalized and bounded within [-1,1] 

32. fBodyAccMag-mean(): Mean of frequency domain body acceleration magnitude, values are normalized and bounded within [-1,1] 

33. fBodyAccJerkMag-mean(): Mean of frequency domain body  acceleration jerk magnitude, values are normalized and bounded within [-1,1]

34. fBodyGyroMag-mean(): Mean of frequency domain body gyro magnitude, values are normalized and bounded within [-1,1]

35. fBodyGyroJerkMag-mean(): Mean of frequency domain body gyro jerk magnitude, values are normalized and bounded within [-1,1]

36. tBodyAcc-std()-X: Standard deviation of time domain body acceleration signal along X axis, values are normalized and bounded within [-1,1]

37. tBodyAcc-std()-Y: Standard deviation of time domain body acceleration signal along Y axis, values are normalized and bounded within [-1,1] 

38. tBodyAcc-std()-Z: Standard deviation of time domain body acceleration signal along Z axis, values are normalized and bounded within [-1,1] 

39. tGravityAcc-std()-X: Standard deviation of time domain gravity acceleration signal along X axis, values are normalized and bounded within [-1,1] 

40. tGravityAcc-std()-Y: Standard deviation of time domain gravity acceleration signal along Y axis, values are normalized and bounded within [-1,1] 

41. tGravityAcc-std()-Z: Standard deviation of time domain gravity acceleration signal along Z axis, values are normalized and bounded within [-1,1] 

42. tBodyAccJerk-std()-X: Standard deviation of time domain body acceleration jerk signal along X axis, values are normalized and bounded within [-1,1] 

43. tBodyAccJerk-std()-Y: Standard deviation of time domain body acceleration jerk signal along Y axis, values are normalized and bounded within [-1,1] 

44. tBodyAccJerk-std()-Z: Standard deviation of time domain body acceleration jerk signal along Z axis, values are normalized and bounded within [-1,1] 

45. tBodyGyro-std()-X: Standard deviation of time domain body gyro signal along X axis, values are normalized and bounded within [-1,1] 

46. tBodyGyro-std()-Y: Standard deviation of time domain body gyro signal along Y axis, values are normalized and bounded within [-1,1] 

47. tBodyGyro-std()-Z: Standard deviation of time domain body gyro signal along Z axis, values are normalized and bounded within [-1,1] 

48. tBodyGyroJerk-std()-X: Standard deviation of time domain body gyro jerk signal along X axis, values are normalized and bounded within [-1,1]

49. tBodyGyroJerk-std()-Y: Standard deviation of time domain body gyro jerk signal along Y axis, values are normalized and bounded within [-1,1] 

50. tBodyGyroJerk-std()-Z: Standard deviation of time domain body gyro jerk signal along Z axis, values are normalized and bounded within [-1,1] 

51. tBodyAccMag-std(): standard deviation of time domain body acceleration magnitude, values are normalized and bounded within [-1,1] 

52. tGravityAccMag-std(): Standard deviation of time domain gravity acceleration magnitude, values are normalized and bounded within [-1,1] 

53. tBodyAccJerkMag-std(): Standard deviation of time domain acceleration jerk magnitude, values are normalized and bounded within [-1,1]

54. tBodyGyroMag-std(): Standard deviation of time domain body gyro magnitude, values are normalized and bounded within [-1,1]

55. tBodyGyroJerkMag-std(): standard deviation of time domain body gyro jerk magnitude, values are normalized and bounded within [-1,1]

56. fBodyAcc-std()-X: standard deviation of frequency domain body acceleration signal along X axis, values are normalized and bounded within [-1,1] 

57. fBodyAcc-std()-Y: standard deviation of frequency domain body acceleration signal along Y axis, values are normalized and bounded within [-1,1] 

58. fBodyAcc-std()-Z: standard deviation of frequency domain body acceleration signal along Z axis, values are normalized and bounded within [-1,1] 

59. fBodyAccJerk-std()-X: standard deviation of frequency domain body acceleration jerk signal along X axis, values are normalized and bounded within [-1,1] 

60. fBodyAccJerk-std()-Y: standard deviation of frequency domain body acceleration jerk signal along Y axis, values are normalized and bounded within [-1,1] 

61. fBodyAccJerk-std()-Z: standard deviation of frequency domain body acceleration jerk signal along Z axis, values are normalized and bounded within [-1,1] 

62. fBodyGyro-std()-X: standard deviation of body gyro signal along X axis, values are normalized and bounded within [-1,1] 

63. fBodyGyro-std()-Y: standard deviation of body gyro signal along Y axis, values are normalized and bounded within [-1,1] 

64. fBodyGyro-std()-Z: standard deviation of body gyro signal along Z axis, values are normalized and bounded within [-1,1] 

65. fBodyAccMag-std(): standard deviation of body acceleration magnitude, values are normalized and bounded within [-1,1] 

66. fBodyAccJerkMag-std(): standard deviation of body acceleration jerk magnitude, values are normalized and bounded within [-1,1]

67. fBodyGyroMag-std(): standard deviation of body gyro magnitude, values are normalized and bounded within [-1,1] 

68. fBodyGyroJerkMag-std(): standard deviation of body gyro jerk magnitude, values are normalized and bounded within [-1,1]



