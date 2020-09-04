# Simon Liles 
# 9/4/2020
# LIS 4273 Advanced Statistics 
# Module 2 Descriptive Statistics with R

# Given data sets

set_1 <- c(10, 2, 3, 2, 4, 2, 5)

set_2 <- c(20, 12, 13, 12, 14, 12, 15)

# 1. Compute mean, median, mode under Central Tendency
  # Data set 1 central tendency calculations
  set_1_mean <- mean(set_1)
  set_1_median <- median(set_1)
  set_1_mode <- mode(set_1)
  
  # Data set 2 central tendency
  set_2_mean <- mean(set_2)
  set_2_median <- median(set_2)
  set_2_mode <- mode(set_2)

# 2. Compute range, interquartile, variance, standard deviation under Variation
    # Data set 1 Variation Calculations
    set_1_range <- range(set_1)
    set_1_iq <- IQR(set_1)
    set_1_variance <- var(set_1)
    set_1_sd <- sd(set_1)
    
    # Data set 2 Variation Calculations
    set_2_range <- range(set_2)
    set_2_iq <- IQR(set_2)
    set_2_variance <- var(set_2)
    set_2_sd <- sd(set_2)
    
# Print results to console
    # Set 1
    # Input Data
    set_1
    # Mean
    set_1_mean
    # Median
    set_1_median
    # Mode
    set_1_mode
    # Range
    set_1_range
    # Interquartile Range
    set_1_iq
    # Variance
    set_1_variance
    # Standard Deviation
    set_1_sd
    
    # Set 2
    # Input Data
    set_2
    # Mean
    set_2_mean
    # Median
    set_2_median
    # Mode
    set_2_mode
    # Range
    set_2_range
    # Interquartile Range
    set_2_iq
    # Variance
    set_2_variance
    # Standard Deviation
    set_2_sd
    
    
    
    
    
    
    