library(dplyr)

mpg_df <- read.csv("data/MechaCar_mpg.csv")

head(mpg_table)

lm(mpg ~ ., mpg_df)

lm(mpg ~ ., mpg_df) %>% summary()
