#### Preamble ####
# Purpose: Tests the simulated data of the US GSS. Real data can be downloaded from https://gss.norc.org/get-the-data/stata
# Author: Chloe Thierstein 
# Date: 10 April 2023 
# Contact: chloe.thierstein@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to be able to load in simulated data created
# Other Notes: Tests are applicable to all simulated data, the tests below test 2021


#### Workspace setup ####
library(here)

#### Load in Simulated Data ####
simulated_gss_data <- read.csv(here::here("./inputs/simulated_2021_gss_data.csv"))

#### Testing Simulated Data ####

#### Test 1 ####
simulated_gss_data$"party_identification" |>
  unique()|>
  length() == 8

#### Test 2 ####
simulated_gss_data$"cohort" |>
  class() == "character"

#### Test 3 ####
simulated_gss_data$"marital_status" |>
  unique()

#### Test 4 ####
simulated_gss_data$"political_viewpoint" |>
  unique()

