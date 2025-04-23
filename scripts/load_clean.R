library(readr)
library(janitor)
library(tidyverse)
library(dplyr) 

# Load each CSV
data1 <- read_csv("data/diabetes_012_health_indicators_BRFSS2015.csv") %>% clean_names()
data2 <- read_csv("data/diabetes_binary_5050split_health_indicators_BRFSS2015.csv") %>% clean_names()
data3 <- read_csv("data/diabetes_binary_health_indicators_BRFSS2015.csv") %>% clean_names()

# Convert target to factor
data1$diabetes_012 <- as.factor(data1$diabetes_012)
data2$diabetes_binary <- as.factor(data2$diabetes_binary)
data3$diabetes_binary <- as.factor(data3$diabetes_binary)

# Save cleaned data
write_csv(data1, "outputs/cleaned_diabetes_data1.csv")
write_csv(data2, "outputs/cleaned_diabetes_data2.csv")


# Preview one of them
glimpse(data1)

