library(dplyr)

mpg_df <- read.csv("data/MechaCar_mpg.csv")

head(mpg_table)

lm(mpg ~ ., mpg_df)

lm(mpg ~ ., mpg_df) %>% summary()


suspension_df <- read.csv("data/Suspension_Coil.csv")

total_summary <- summarize(suspension_df, Mean=mean(PSI), Median=median(PSI),
                           Variance=var(PSI), SD=sd(PSI))
lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
