# Week 8 analysis — Bad Drivers by State
library(tidyverse)

url <- "https://raw.githubusercontent.com/fivethirtyeight/data/master/bad-drivers/bad-drivers.csv"
df  <- read_csv(url)

glimpse(df)

# Which states have the most alcohol-impaired fatal collisions?
df |>
  slice_max(`% Of Drivers Involved In Fatal Collisions Who Were Alcohol-Impaired`, n = 10) |>
  select(State, `% Of Drivers Involved In Fatal Collisions Who Were Alcohol-Impaired`)