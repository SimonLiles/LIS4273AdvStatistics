# Simon Liles 
# 11/13/2020
# LIS 4273 Advanced Statistics 
# Module 12 Time Series Analysis in R

library("forecast")

# Set up raw data
charges <- c(31.9, 27, 31.3, 31, 39.4, 40.7, 42.3, 49.5, 45, 50, 50.9, 58.5, 
             39.4, 36.2, 40.5, 44.6, 46.8, 44.7, 52.2, 54, 48.8, 55.8, 58.7, 63.4)

# Make raw data a time series object
chargesOverTime <- ts(charges, start = 2012, frequency = 12)
chargesOverTime

# Plot raw data as Time Series graph before analysis
plot.ts(chargesOverTime)

# Decompose components of original time series dataset
chargesOverTimeComponents <- decompose(chargesOverTime)
chargesOverTimeComponents

# Plot components of raw time series data
plot(chargesOverTimeComponents)

# Perform Exponential Smoothing 
chargesOverTimeForecast <- HoltWinters(chargesOverTime)
chargesOverTimeForecast

# Plot with Exponential Smoothing added
plot(chargesOverTimeForecast)
plot(chargesOverTimeForecast, xlim = c(2012, 2014))

# Create forecast for future observations for 12 months
chargesOverTimeForecast2 <- forecast(chargesOverTimeForecast, h = 12)
chargesOverTimeForecast2

# Plot 12 month forecast
plot(chargesOverTimeForecast2)
