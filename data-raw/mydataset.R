# data-raw/pokemon.R
# Data import and processing pipeline

library(readr)

pokemon <- read_csv("data-raw/All_Pokemon.csv")

# Data cleaning code here...
# (Do NOT put data analysis code here!)

# This should be the last line.
# Note that names are unquoted.
# I like using overwrite = T so everytime I run the script the 
# updated objects are saved, but the default is overwrite = F
usethis::use_data(pokemon, overwrite = TRUE)
