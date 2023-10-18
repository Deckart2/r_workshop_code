#' Calculate correlation between Ozone and Solar Radiation for a specific month.
# 
#' This function calculates the correlation between Ozone and Solar Radiation
#' for a specific month in the given dataset.
# 
#' @param data A data frame containing the air quality data.
#' @param month An integer specifying the month for which to calculate the correlation.
#' 
#' @return A numeric value representing the correlation between Ozone and Solar Radiation for the specified month.
#' 
#' @examples
#' # Calculate correlation for May
#' correlation_may <- calculate_correlation(airquality, 5)
#' 
#' # Calculate correlation for June
#' correlation_june <- calculate_correlation(airquality, 6)
#'
#' @seealso
#' \code{\link{cor}} to learn more about the cor() function.
#'
#' @importFrom dplyr filter summarize
#' @importFrom stats cor
calculate_correlation <- function(data, month) {
  correlation <- data %>%
    filter(Month == month) %>%
    summarize(correlation = cor(Ozone, Solar.R))
  return(correlation$correlation)
}
