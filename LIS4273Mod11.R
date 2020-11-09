# Raw data in contingency table
beachcomber <- c(163, 64)
windsurfer <- c(154, 108)
response <- c("yes", "no")

# Put data into a data frame
hotel_survey <- data.frame(response, beachcomber, windsurfer)

# Perform Chi Square Test
chisq.test(hotel_survey[,2:3], correct = TRUE)

# Data visualization
hotel_columns <- pivot_longer(hotel_survey , cols = c(beachcomber, windsurfer))
ggplot(hotel_columns, aes(x = response)) +
  geom_bar(aes(weight = value), fill = "darkblue") +
  facet_wrap(~name)
