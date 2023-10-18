# Loading necessary libraries
library(tidyverse)

# Fetching data
data <- airquality

# Function to clean data
clean_data <- function(data) {
  data <- data %>%
    drop_na(Ozone, Solar.R, Wind, Temp, Month, Day)
  return(data)
}

data <- clean_data(data)

# Function to calculate average Solar Radiation
calculate_average_solar <- function(data, month) {
  avg_solar <- data %>%
    filter(Month == month) %>%
    summarize(avg_solar = sum(Solar.R) / n())
  return(avg_solar$avg_solar)
}

# Function to calculate correlation
calculate_correlation <- function(data, month) {
  correlation <- data %>%
    filter(Month == month) %>%
    summarize(correlation = cor(Ozone, Solar.R))
  return(correlation$correlation)
}

# Function to save plot
save_plot <- function(data, month, correlation) {
  
  ifelse(correlation > 0.5, 19, 15)
  g <- data %>%
    filter(Month == month) %>%
    ggplot(aes(x = Solar.R, 
               y = Ozone, 
               shape = factor(Month)
               )
           ) +
    geom_point() +
    ggtitle(month.name[month])
  ggsave(paste0("plot_", tolower(month.name[month]), ".png"), g)
}

# Function to save data
save_data <- function(data, filename) {
  write_csv(data, filename)
}

# Analysis Part 1: Calculate average Solar Radiation for each month
months <- c(5, 6, 7, 8, 9)
for (month in months) {
  avg_solar <- calculate_average_solar(data, month)
  cat("Average Solar Radiation for", month.name[month], ":", avg_solar, "\n")
}

# Analysis Part 2: Correlation between Ozone and Solar Radiation for each month
for (month in months) {
  correlation <- calculate_correlation(data, month)
  cat("Correlation for", month.name[month], ":", correlation, "\n")
  save_plot(data, month, correlation)
}

# Save data
save_data(data, "cleaned_data.csv")
