# Load packages...
library(tidyverse)
library(dplyr)

### DELIVERABLE-1
#Load csv file...
mpg_df <- read.csv(file="../Resources/MechaCar_mpg.csv")
coil_df <- read.csv(file="../Resources/Suspension_Coil.csv")

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df) 

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df))



#<--Not part of the challenge-->#
# Run Chi-Squared test on Categorical i/p
#generate contingency table
tbl <- table(mpg_df$mpg,mpg_df$AWD)

#compare categorical distributions
chisq.test(tbl) 
#<--Not part of the challenge-->#



### DELIVERABLE-2
# Create a data frame to generate the totoal summary
total_summary <- coil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Create a data frame to group each manufacturing lot
lot_summary <- coil_df %>% group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI), Median= median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')



### DELIVERABLE-3
#compare PSI across all mfg.lots versus population means
t.test(coil_df$PSI, mu=1500)

#compare PSI across all each mfg.lot versus population means
#Lot-1
t.test(subset(coil_df, Manufacturing_Lot == "Lot1")$PSI, mu=1500) 

#Lot-2
t.test(subset(coil_df, Manufacturing_Lot == "Lot2")$PSI, mu=1500) 

#Lot-3
t.test(subset(coil_df, Manufacturing_Lot == "Lot3")$PSI, mu=1500) 



### DELIVERABLE-4
#generate linear regression model
lm(mpg ~ vehicle_weight, data=mpg_df) 

#generate summary statistics
summary(lm(mpg ~ vehicle_weight, data=mpg_df))

#t.test(mpg_df$mpg, mu=mean(mpg_df$vehicle_weight))


#<--Not part of the challenge-->#
#filter columns from mtcars dataset
#hieff_car <- mpg_df[,c("mpg","vehicle_weight")] 

#convert numeric column to factor
#hieff_car$vehicle_weight <- factor(hieff_car$vehicle_weight) 

#compare means across multiple levels
#summary(aov(mpg ~ vehicle_weight,data=hieff_car))
#<--Not part of the challenge-->#
