# LIS 4273 Mod 9

# Columns
gender <- c(1,2,2,1,2,2,1,2,1,2,1,2)
hand_up <- c(9,11,1,8,2,6,3,4,8,3,10,6)

# Creating the dataframe to hold the raw data
raw_data <- data.frame(gender,hand_up)

# Pulling out two vectors from data frame based on gender
# Girls have been coded as 1, boys have been coded as 2
girls <- raw_data$hand_up[raw_data$gender == 1]
boys <- raw_data$hand_up[raw_data$gender == 2]

#Data analysis stuff
t.test(girls, boys)

t.test(girls, boys, conf.level = 0.99)
