#### Preamble ####
# Purpose: Simulates data from the US General Social Survey which can be downloaded from https://gss.norc.org/get-the-data/stata
# Author: Chloe Thierstein
# Date: 10 April 2023 
# Contact: chloe.thierstein@mail.utoronto.ca 
# License: MIT
# Pre-requisites: To understand the data needed, you must know where to find the US General Social Survey data


#### Workspace setup ####
library(tibble)
library(readr)
library(here)

#### Simulate 2021 data ####

set.seed(853)

simulated_gss_data <-
  tibble(
    "party_identification" = sample(
      x = c(
        "Strong Democrat",
        "Not Very Strong Democrat",
        "Independent, Close to Democrat",
        "Independent (Neither)",
        "Independent, Close to Republican",
        "Not Very Strong Republican",
        "Strong Republican",
        "Other Party"
      ),
      size = 4032,
      replace = TRUE
    ),
    "political_viewpoint" = sample(
      x = c(
        "Extremely Liberal",
        "Liberal",
        "Slightly Liberal",
        "Moderate",
        "Slightly Conservative",
        "Conservative",
        "Extremely Conservative"
      ),
      size = 4032,
      replace = TRUE
    ),
    "marital_status" = sample(
      x = c(
        "Married",
        "Divorced",
        "Widowed",
        "Never Married",
        "Separated"
      ),
      size = 4032,
      replace = TRUE
    ),
    "sex" = sample(
      x = c(
        "Female",
        "Male"
      ),
      size = 4032,
      replace = TRUE
    ),
    "cohort" = sample(
      x = c(
        "Post-War",
        "Boomer",
        "Gen X",
        "Millenial",
        "Gen Z"
      ),
      size = 4032,
      replace = TRUE
    )
  )

#### Save Simulated Data ####
write_csv(simulated_gss_data, here::here("inputs/simulated_2021_gss_data.csv")) #download to inputs/data


#### Simulate 2018 data ####

set.seed(853)

simulated_gss_data <-
  tibble(
    "party_identification" = sample(
      x = c(
        "Strong Democrat",
        "Not Very Strong Democrat",
        "Independent, Close to Democrat",
        "Independent (Neither)",
        "Independent, Close to Republican",
        "Not Very Strong Republican",
        "Strong Republican",
        "Other Party"
      ),
      size = 2348,
      replace = TRUE
    ),
    "political_viewpoint" = sample(
      x = c(
        "Extremely Liberal",
        "Liberal",
        "Slightly Liberal",
        "Moderate",
        "Slightly Conservative",
        "Conservative",
        "Extremely Conservative"
      ),
      size = 2348,
      replace = TRUE
    ),
    "marital_status" = sample(
      x = c(
        "Married",
        "Divorced",
        "Widowed",
        "Never Married",
        "Separated"
      ),
      size = 2348,
      replace = TRUE
    ),
    "sex" = sample(
      x = c(
        "Female",
        "Male"
      ),
      size = 2348,
      replace = TRUE
    ),
    "cohort" = sample(
      x = c(
        "Post-War",
        "Boomer",
        "Gen X",
        "Millenial",
        "Gen Z"
      ),
      size = 2348,
      replace = TRUE
    )
  )

#### Save Simulated Data ####
write_csv(simulated_gss_data, here::here("inputs/simulated_2018_gss_data.csv")) #download to inputs/data

#### Simulate 2016 data ####

set.seed(853)

simulated_gss_data <-
  tibble(
    "party_identification" = sample(
      x = c(
        "Strong Democrat",
        "Not Very Strong Democrat",
        "Independent, Close to Democrat",
        "Independent (Neither)",
        "Independent, Close to Republican",
        "Not Very Strong Republican",
        "Strong Republican",
        "Other Party"
      ),
      size = 2867,
      replace = TRUE
    ),
    "political_viewpoint" = sample(
      x = c(
        "Extremely Liberal",
        "Liberal",
        "Slightly Liberal",
        "Moderate",
        "Slightly Conservative",
        "Conservative",
        "Extremely Conservative"
      ),
      size = 2867,
      replace = TRUE
    ),
    "marital_status" = sample(
      x = c(
        "Married",
        "Divorced",
        "Widowed",
        "Never Married",
        "Separated"
      ),
      size = 2867,
      replace = TRUE
    ),
    "sex" = sample(
      x = c(
        "Female",
        "Male"
      ),
      size = 2867,
      replace = TRUE
    ),
    "cohort" = sample(
      x = c(
        "Post-War",
        "Boomer",
        "Gen X",
        "Millenial",
        "Gen Z"
      ),
      size = 2867,
      replace = TRUE
    )
  )

#### Save Simulated Data ####
write_csv(simulated_gss_data, here::here("inputs/simulated_2016_gss_data.csv")) #download to inputs/data

#### Simulate 2014 data ####

set.seed(853)

simulated_gss_data <-
  tibble(
    "party_identification" = sample(
      x = c(
        "Strong Democrat",
        "Not Very Strong Democrat",
        "Independent, Close to Democrat",
        "Independent (Neither)",
        "Independent, Close to Republican",
        "Not Very Strong Republican",
        "Strong Republican",
        "Other Party"
      ),
      size = 2538,
      replace = TRUE
    ),
    "political_viewpoint" = sample(
      x = c(
        "Extremely Liberal",
        "Liberal",
        "Slightly Liberal",
        "Moderate",
        "Slightly Conservative",
        "Conservative",
        "Extremely Conservative"
      ),
      size = 2538,
      replace = TRUE
    ),
    "marital_status" = sample(
      x = c(
        "Married",
        "Divorced",
        "Widowed",
        "Never Married",
        "Separated"
      ),
      size = 2538,
      replace = TRUE
    ),
    "sex" = sample(
      x = c(
        "Female",
        "Male"
      ),
      size = 2538,
      replace = TRUE
    ),
    "cohort" = sample(
      x = c(
        "Post-War",
        "Boomer",
        "Gen X",
        "Millenial",
        "Gen Z"
      ),
      size = 2538,
      replace = TRUE
    )
  )

#### Save Simulated Data ####
write_csv(simulated_gss_data, here::here("inputs/simulated_2014_gss_data.csv")) #download to inputs/data

