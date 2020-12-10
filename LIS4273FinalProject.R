
# Read in raw data #############################################################

# Read in CSV data to a data frame
all_week <- read.csv("all_week.csv")

# Copy original CSV data into another data frame for manipulation
eqData <- all_week

# Clean up data set ############################################################

# Remove NA's for Stations Reporting Magnitude and Magnitude Error
eqData <- eqData[complete.cases(eqData$magNst, eqData$magError),]

# Plots and analysis ###########################################################

# Initial plot to find a potential pattern
plot(eqData$magNst, eqData$magError)

# Correlation Analysis
cor_test1 <- cor.test(eqData$magNst, eqData$magError)
cor_test1

# Scatter plot with line best fit
scatter.smooth(eqData$magNst, eqData$magError, main = "magError ~ magNst")

# Box plots showing outliers
par(mfrow = c(1,2))
boxplot(eqData$magNst, main="magNst")
boxplot(eqData$magError, main="magError")
par(mfrow = c(1,1))

# Pulling numbers directly from the box plots
boxplot.stats(eqData$magNst)$stats
boxplot.stats(eqData$magError)$stats

# Removing outliers more than 1.5 times the IQR from mean
eqDataNoOut <- eqData[(eqData$magNst <= boxplot.stats(eqData$magNst)$stats[5]),]
eqDataNoOut <- eqDataNoOut[(eqDataNoOut$magError <= boxplot.stats(eqData$magError)$stats[5]),]

# Basic scatter plot without outliers
plot(eqDataNoOut$magNst, eqDataNoOut$magError)

# Scatter plot with line of best fit without outliers
scatter.smooth(eqDataNoOut$magNst, eqDataNoOut$magError, main = "magError ~ magNst")

# Box plots showing the removal of most outliers
par(mfrow = c(1,2))
boxplot(eqDataNoOut$magNst, main="magNst")
boxplot(eqDataNoOut$magError, main="magError")
par(mfrow = c(1,1))

# Correlation analysis again showing little change
cor_test2 <- cor.test(eqDataNoOut$magNst, eqDataNoOut$magError)
cor_test2
