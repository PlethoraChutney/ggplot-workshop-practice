install.packages('tidyverse')
install.packages('palmerpenguins')


library(dplyr)
library(readr)
library(ggplot2)
library(palmerpenguins)



# Penguins ----------------------------------------------------------------

# First, let's start with something fun to learn the basics

View(penguins)

## How would you make a histogram of all penguins' bill lengths?

## How could you separate the histogram by species?

## Suppose you wanted to compare each species bill shape (i.e., how their bill length and depth are related)?


# Chromatography ----------------------------------------------------------

# Next we can practice with something that is more relevant to our lab

data <- read_csv('practice-data.csv', col_types = 'ddff') %>% 
  mutate(Channel = if_else(Channel == '2475ChA ex280/em350', 'Trp', 'GFP'))

View(data)
