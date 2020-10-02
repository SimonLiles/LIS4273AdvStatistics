# Question 1 ###################################################################

# Givens
# Assume data set is normal
n = 25
sample_mean = 145
std_dev = 35

## Q2 Part B ####
# Construct 90% Confidence Interval for population
margin_err <- qnorm(0.95) * (std_dev / sqrt(n))

sample_mean - margin_err
sample_mean + margin_err

# Question 2 ###################################################################
# Construct 90% Confidence Interval for population

# Givens
# Assume data set is normal
n = 600
sample_mean = 500
std_dev = 40

margin_err <- qnorm(0.995) * (std_dev / sqrt(n))

sample_mean - margin_err
sample_mean + margin_err

# Generalized Code #############################################################
confidence_interval <- function(confidence, n, mean, std_dev) {
  # Assumes mean and std deviation are known
  # Returns a vector with low and high values of the given confidence interval
  # confidence = confidence level
  # n = sample size
  # mean = sample mean
  # std_dev = standard deviation
  
  margin_err <- qnorm(1 - ((1 - confidence) / 2)) * (std_dev / sqrt(n))
  
  low <- mean - margin_err
  high <- mean + margin_err
  
  return(c(low, high))
}
