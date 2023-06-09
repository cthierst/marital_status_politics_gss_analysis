#### Preamble ####
# Purpose: Cleans data from the 2014 US GSS link: https://gss.norc.org/get-the-data/stata
# Author: Chloe Thierstein
# Date: 10 April 2023
# Contact: chloe.thierstein@mail.utoronto.ca
# License: MIT
# Pre-requisites: Needs access to download the GSS data from https://gss.norc.org/get-the-data/stata for 2014


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(dplyr)
library(haven)
library(here)
library(labelled)

#### Clean data ####

#### Load Raw Data ####
raw_gss_2014 <- read_csv(("inputs/raw_data/raw_gss_2014.csv"))


#### Data Cleaning ####

#### Clean Names ####
cleaned_gss_2014 <- 
  clean_names(raw_gss_2014)

#### Select Relevant Columns ####
cleaned_gss_2014 <-
  cleaned_gss_2014 |>
  select(partyid, polviews, marital, sex, cohort)

#### Removing NA Rows from Data ####
cleaned_gss_2014 <- 
  cleaned_gss_2014|>
  na.omit(datacollected) 

#### Removing Label to be Able to Make Data More Meaningful ####
unlabelled(cleaned_gss_2014)

#### Re-coding ... ####
cleaned_gss_2014 <- cleaned_gss_2014 |>
  mutate(
    partyid =
      recode(
        partyid,
        "0" = "Strong Democrat",
        "1" = "Not Very Strong Democrat",
        "2" = "Independent (Close to Democrat)",
        "3" = "Independent (Neither)",
        "4" = "Independent (Close to Republican)",
        "5" = "Not Very Strong Republican",
        "6" = "Strong Republican",
        "7" = "Other Party"
      )
  )

#### Dropping Cohort Rows with "Other Party" Response ####
cleaned_gss_2014<-cleaned_gss_2014[!(cleaned_gss_2014$partyid =="Other Party"),]


#### Re-coding ... ####
cleaned_gss_2014 <- cleaned_gss_2014 |>
  mutate(
    polviews =
      recode(
        polviews,
        "1" = "Extremely Liberal",
        "2" = "Liberal",
        "3" = "Slightly Liberal",
        "4" = "Moderate",
        "5" = "Slightly Conservative",
        "6" = "Conservative",
        "7" = "Extremely Conservative"
      )
  )



#### Re-coding ... ####
cleaned_gss_2014 <- cleaned_gss_2014 |>
  mutate(
    marital =
      recode(
        marital,
        "1" = "Married",
        "2" = "Widowed",
        "3" = "Divorced",
        "4" = "Separated",
        "5" = "Never Married"
      )
  )


#### Dropping Cohort Rows with "WWII" Response ####
cleaned_gss_2014<-cleaned_gss_2014[!(cleaned_gss_2014$cohort =="1925" | cleaned_gss_2014$cohort == "1926" | cleaned_gss_2014$cohort == "1927"),]


#### Re-coding ... ####
cleaned_gss_2014 <- cleaned_gss_2014 |>
  mutate(
    cohort =
      recode(
        cohort,
        "1925" = "WWII",
        "1926" = "WWII",
        "1927" = "WWII",
        "1928" = "Post-War",
        "1929" = "Post-War",
        "1930" = "Post-War",
        "1931" = "Post-War",
        "1932" = "Post-War",
        "1933" = "Post-War",
        "1934" = "Post-War",
        "1935" = "Post-War",
        "1936" = "Post-War",
        "1937" = "Post-War",
        "1938" = "Post-War",
        "1939" = "Post-War",
        "1940" = "Post-War",
        "1941" = "Post-War",
        "1942" = "Post-War",
        "1943" = "Post-War",
        "1944" = "Post-War",
        "1945" = "Post-War",
        "1946" = "Boomer",
        "1947" = "Boomer",
        "1948" = "Boomer",
        "1949" = "Boomer",
        "1950" = "Boomer",
        "1951" = "Boomer",
        "1952" = "Boomer",
        "1953" = "Boomer",
        "1954" = "Boomer",
        "1955" = "Boomer",
        "1956" = "Boomer",
        "1957" = "Boomer",
        "1958" = "Boomer",
        "1959" = "Boomer",
        "1960" = "Boomer",
        "1961" = "Boomer",
        "1962" = "Boomer",
        "1963" = "Boomer",
        "1964" = "Boomer",
        "1965" = "Gen X",
        "1966" = "Gen X",
        "1967" = "Gen X",
        "1968" = "Gen X",
        "1969" = "Gen X",
        "1970" = "Gen X",
        "1971" = "Gen X",
        "1972" = "Gen X",
        "1973" = "Gen X",
        "1974" = "Gen X",
        "1975" = "Gen X",
        "1976" = "Gen X",
        "1977" = "Gen X",
        "1978" = "Gen X",
        "1979" = "Gen X",
        "1980" = "Gen X",
        "1981" = "Millenial",
        "1982" = "Millenial",
        "1983" = "Millenial",
        "1984" = "Millenial",
        "1985" = "Millenial",
        "1986" = "Millenial",
        "1987" = "Millenial",
        "1988" = "Millenial",
        "1989" = "Millenial",
        "1990" = "Millenial",
        "1991" = "Millenial",
        "1992" = "Millenial",
        "1993" = "Millenial",
        "1994" = "Millenial",
        "1995" = "Millenial",
        "1996" = "Millenial"
      )
  )

#### Re-coding ... ####
cleaned_gss_2014 <- cleaned_gss_2014 |>
  mutate(
    sex =
      recode(
        sex,
        "1" = "Male",
        "2" = "Female"
      )
  )



#### Save data ####
write_csv(cleaned_gss_2014, "inputs/clean_data/cleaned_gss_2014.csv")