#### Preamble ####
# Purpose: Models...
# Author: Chloe Thierstein 
# Date: 20 April 2023
# Contact: chloe.thierstein@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
analysis_data <- read_csv("outputs/data/cleaned_gss_2021.csv")

### Model data ####
gss_model <-
  stan_glm(
    formula = polviews ~ cohort + partyid,
    data = analysis_data,
    family = gaussian(),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 853
  )




#### Save model ####
saveRDS(
  first_model,
  file = "outputs/models/first_model.rds"
)


