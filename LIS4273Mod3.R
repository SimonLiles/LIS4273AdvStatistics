# Simon Liles 
# 9/11/2020
# LIS 4273 Advanced Statistics 
# Module 3 Bivariate Analysis with R

# Given Data. Using tibble package and datapasta to make data entry easier.
# To be honest I do not know why datapasta put Ls after every number
# It does not seem to have any affect on the data as far as I can tell. 
my_data <- data.frame(
  tibble::tribble(
  ~Case, ~pre.boarding.screeners, ~security.violations.detected,
     1L,                    287L,                          271L,
     2L,                    243L,                          261L,
     3L,                    237L,                          230L,
     4L,                    227L,                          225L,
     5L,                    247L,                          236L,
     6L,                    264L,                          252L,
     7L,                    247L,                          243L,
     8L,                    247L,                          247L,
     9L,                    251L,                          238L,
    10L,                    254L,                          274L,
    11L,                    277L,                          256L,
    12L,                    303L,                          305L,
    13L,                    285L,                          273L,
    14L,                    254L,                          234L,
    15L,                    280L,                          261L,
    16L,                    264L,                          265L,
    17L,                    261L,                          241L,
    18L,                    292L,                          292L,
    19L,                    248L,                          228L,
    20L,                    253L,                          252L
  ))

# Lets do some Bivariate Analysis!
pearson_correlation <- cor(my_data$pre.boarding.screeners, my_data$security.violations.detected, method = "pearson")
spearman_rank <- cor(my_data$pre.boarding.screeners, my_data$security.violations.detected, method = "spearman")

# Lets plot the data!
plot(my_data$pre.boarding.screeners, my_data$security.violations.detected)



