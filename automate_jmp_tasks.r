# some quick scripts to replicate some JMP functionality (minus the GUI parts...)

# snag a basic csv file
myData <- read.csv(path_to_your_data.csv,header=TRUE) # or FALSE, depending on the file
# attach it
attach(myData)

# similar to "analyze distribution" 
# get a histogram for a column
hist(myColumn,main="your title")
legend("topright",paste("Mean = ", round(mean(myColumn),1),
       "\nMed. = ",round(median(myColumn),1),
       "\nSD = ", round(sd(myColumn),1)),bty="n")
# get the summary statistics 
summary(myColumn)
# test for normality: Shapiro-Wilk test?
shapiro.test(myColumn)

# basic QQ-plot: is it approximately normal?
qqnorm(myColumn)
qqline(myColumn)


# do a t test on a column
mu_theory = what_you_think_mu_is
t.test(myColumn,mu=mu_theory)

# printing out a summary for all the columns
