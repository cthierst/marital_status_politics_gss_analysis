#### Preamble ####
# Purpose: Cleans data from the 2018 US GSS link: https://gss.norc.org/get-the-data/stata
# Author: Chloe Thierstein
# Date: 10 April 2023
# Contact: chloe.thierstein@mail.utoronto.ca
# License: MIT
# Pre-requisites: Needs access to download the GSS data from https://gss.norc.org/get-the-data/stata for 2018


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(dplyr)
library(haven)
library(here)
library(labelled)

#### Clean data ####

#### Load Raw Data ####
raw_gss_2018 <- read_csv(("inputs/data/raw_gss_2018.csv"))


#### Data Cleaning ####

#### Clean Names ####
cleaned_gss_2018 <- 
  clean_names(raw_gss_2018)

#### Select Relevant Columns ####
cleaned_gss_2018 <-
  cleaned_gss_2018 |>
  select(partyid, polviews, attend, pray, life, marital, sex, cohort)

#### Removing NA Rows from Data ####
cleaned_gss_2018 <- 
  cleaned_gss_2018|>
  na.omit(datacollected) 

#### Removing Label to be Able to Make Data More Meaningful ####
unlabelled(cleaned_gss_2018)

#### Re-coding ... ####
cleaned_gss_2018 <- cleaned_gss_2018 |>
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
cleaned_gss_2018<-cleaned_gss_2018[!(cleaned_gss_2018$partyid =="Other Party"),]


#### Re-coding ... ####
cleaned_gss_2018 <- cleaned_gss_2018 |>
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
cleaned_gss_2018 <- cleaned_gss_2018 |>
  mutate(
    attend =
      recode(
        attend,
        "0" = "Never",
        "1" = "Less Than Once a Year",
        "2" = "About Once or Twice a Year",
        "3" = "Several Times a Year",
        "4" = "About Once a Month",
        "5" = "2-3 Times a Month",
        "6" = "Nearly Every Week",
        "7" = "Every Week",
        "8" = "Several Times a Week"
      )
  )

#### Re-coding ... ####
cleaned_gss_2018 <- cleaned_gss_2018 |>
  mutate(
    pray =
      recode(
        pray,
        "1" = "Several Times a Day",
        "2" = "Once a Day",
        "3" = "Several Times a Week",
        "4" = "Once a Week",
        "5" = "Less Than Once a Week",
        "6" = "Never"
      )
  )


#### Re-coding ... ####
cleaned_gss_2018 <- cleaned_gss_2018 |>
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

#### Re-coding ... ####
cleaned_gss_2018 <- cleaned_gss_2018 |>
  mutate(
    life =
      recode(
        life,
        "1" = "Exciting",
        "2" = "Routine",
        "3" = "Dull"
      )
  )

#### Re-coding ... ####
cleaned_gss_2018 <- cleaned_gss_2018 |>
  mutate(
    cohort =
      recode(
        cohort,
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
        "1996" = "Millenial",
        "1997" = "Gen Z",
        "1998" = "Gen Z",
        "1999" = "Gen Z",
        "2000" = "Gen Z",
        "9999" = "Not Sure"
      )
  )

#### Re-coding ... ####
cleaned_gss_2018 <- cleaned_gss_2018 |>
  mutate(
    sex =
      recode(
        sex,
        "1" = "Male",
        "2" = "Female"
      )
  )

#### Save data ####
write_csv(cleaned_gss_2018, "outputs/data/cleaned_gss_2018.csv")