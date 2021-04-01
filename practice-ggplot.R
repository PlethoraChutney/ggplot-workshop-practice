library(dplyr)
library(readr)
library(ggplot2)

data <- read_csv('practice-data.csv', col_types = 'ddff') %>% 
  mutate(Channel = if_else(Channel == '2475ChA ex280/em350', 'Trp', 'GFP'))
