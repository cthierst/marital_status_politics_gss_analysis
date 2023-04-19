#### Preamble ####
# Purpose: Downloads and saves the data from the US GSS Link:https://gss.norc.org/get-the-data/stata
# Author: Chloe Thierstein 
# Date: 10 April 2023
# Contact: chloe.thierstein@mail.utoronto.ca
# License: MIT
# Pre-requisites: Needs access to download the GSS data from https://gss.norc.org/get-the-data/stata for 2014, 2016, 2018, and 2021

#### Opening Libraries ####

library(tidyverse)
library(haven)
library(here)
library(readr)
library(dplyr)

#### Download data ####
raw_gss_2021 <- read_dta("inputs/stata_data/GSS2021.dta") # downloads .dta file from US GSS first and put "GSS2021.dta" folder into data folder 

raw_gss_2018 <- read_dta("inputs/stata_data/GSS2018.dta") # downloads .dta file from US GSS first and put "GSS2018.dta" folder into data folder 

raw_gss_2016 <- read_dta("inputs/stata_data/GSS2016.dta") # downloads .dta file from US GSS first and put "GSS2016.dta" folder into data folder 

raw_gss_2014 <- read_dta("inputs/stata_data/GSS2014.dta") # downloads .dta file from US GSS first and put "GSS2014.dta" folder into data folder 


#### Save data ####

write.csv(raw_gss_2021, here::here("inputs/raw_data/raw_gss_2021.csv"))

write.csv(raw_gss_2018, here::here("inputs/raw_data/raw_gss_2018.csv"))

write.csv(raw_gss_2016, here::here("inputs/raw_data/raw_gss_2016.csv")) 

write.csv(raw_gss_2014, here::here("inputs/raw_data/raw_gss_2014.csv"))
