# some quick scripts to replicate some JMP functionality (minus the GUI parts...)

# snag a basic csv file
myData <- read.csv(path_to_your_data.csv,header=TRUE) # or FALSE, depending on the file
# attach it
attach(myData)

# similar to "analyze distribution" 
# get a histogram for a column
# get the summary statistics 
# test for normality: Wald test?


# do a t test on a column

# printing out a summary for all the columns
