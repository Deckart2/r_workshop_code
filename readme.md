# README

# Data Analysis Script

This script performs data analysis on the `airquality` dataset using R
and the tidyverse package. It includes functions for data cleaning,
calculation of average solar radiation for each month, and computation
of the correlation between ozone and solar radiation for each month.

## Prerequisites

Before running the script, make sure you have the following:

-   R installed
-   Required R packages: tidyverse

## Functions

### `clean_data(data)`

-   **Input**: A data frame containing the air quality data.
-   **Output**: A cleaned data frame with missing values removed.

### `calculate_average_solar(data, month)`

-   **Input**:
    -   `data`: A data frame containing the air quality data.
    -   `month`: The month for which you want to calculate the average
        solar radiation.
-   **Output**: The average solar radiation for the specified month.

### `calculate_correlation(data, month)`

-   **Input**:
    -   `data`: A data frame containing the air quality data.
    -   `month`: The month for which you want to calculate the
        correlation between ozone and solar radiation.
-   **Output**: The correlation coefficient between ozone and solar
    radiation for the specified month.

### `save_data(data, filename)`

-   **Input**:
    -   `data`: A data frame containing the cleaned data.
    -   `filename`: The name of the CSV file to save the data.
-   **Output**: The cleaned data saved as a CSV file.

## Usage

1.  Open R or RStudio.
2.  Load the script: [main_script.R](main_script.R).
3.  Run the script.

The script will clean the data, perform data analysis using the listed
functions, and save the results in a CSV file.

## License

## This project is licensed under the [MIT License](LICENSE.md).

**Note**: Replace the [MIT License](LICENSE.md) with your chosen license
and provide the corresponding license file.

------------------------------------------------------------------------

## Quarto

Quarto enables you to weave together content and executable code into a
finished document. To learn more about Quarto see <https://quarto.org>.

## Running Code

When you click the **Render** button a document will be generated that
includes both content and the output of embedded code. You can embed
code like this:

``` r
1 + 1
```

    [1] 2

You can add options to executable code like this

    [1] 4

The `echo: false` option disables the printing of code (only output is
displayed).
