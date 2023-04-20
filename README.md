# GSS Marriage Politics Analysis

## Overview

This repository contains all files necessary to conduct an analysis of the United States population marital status in relation to political identity. The aim of this analysis is to determine if the political identity of US citizens influences rates of marital status. It also considers sex and birth cohort in it's analysis.

## Requirements

This analysis requires RStudio and Quarto. To complete this project you will need to have both of these installed. I recommend using RStudio on your local computer or Posit Cloud as your IDE.

Following the download of your environment, you will need to download the packages associated with this project. These are:

-   `tidyverse`
-   `ggplot2`
-   `RColorBrewer`
-   `kableExtra`
-   `knitr`
-   `dplyr`
-   `here`
-   `labelled`
-   `haven`
-   `janitor`
-   `readr`
-   `rstanarm`
-   `tibble`

## Downloading Data

The data for this paper comes from the US General Social Survey (GSS). Unfortunately, I do not have permission to store the data within this repository. To access this data, you will need to physically download the data from the [GSS website](https://gss.norc.org/get-the-data/stata) and select "2014", "2016", "2018" and "2021." You will need to store this data in your inputs folder at,

`inputs/data/stata_data`

After doing this, you can download the data by running the script, 02-download_data.R which is located in the scripts folder. This will download the data and save the raw data as .csv files to your main folder. They will be saved to,

`inputs/data/raw_data`

to ensure that GSS data is not being pushed to GitHub.

## Cleaning Data

Next, we will clean the data to help use better use and understand the data. Within the scripts folder, you will find the script, "03-data_cleaning_2021.R", "04-data_cleaning_2018.R", "05-data_cleaning_2016.R", and "06-data_cleaning_2014.R". These scripts handle all of our data cleaning, including filtering of NA data. They are separated for ease of understanding and clarity.

## Analyzing Data

For this project, data analysis occurs within the paper.qmd file which is located at

`outputs/paper.qmd`

This is a Quarto document and can be used to generate the paper.pdf file which is located at

`outputs/paper.pdf`

Raw references used within the .qmd file are available at

`outputs/references.bib`

## Simulating Data

Simulated data for this project is located at

`scripts/00-simulate_data.R`

## Testing data

Four tests for this project are located at

`scripts/01-test_data.R`
