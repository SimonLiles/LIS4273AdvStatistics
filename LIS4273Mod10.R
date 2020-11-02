# LIS 4273 Adv Statistics 
# Module 10 Assignment

# Set up sample data
stress_levels <- c(10, 9, 8, 9, 10, 8, 8, 10, 6, 7, 8, 8, 4, 6, 6, 4, 2, 2)
group <- factor(c("high", "high", "high", "high", "high", "high", "moderate", "moderate", 
           "moderate", "moderate", "moderate", "moderate", "low", "low", "low", 
           "low", "low", "low"))
my_data <- data.frame(group, stress_levels)

# Run ANOVA test
ANOVA_test <- aov(stress_levels ~ group, data = my_data)
summary(ANOVA_test)