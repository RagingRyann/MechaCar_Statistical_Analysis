library(dplyr)
# Import dataset
mpg_prototype <- read.csv('MechaCar_mpg.csv')
head(mpg_prototype)

# Generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_prototype)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_prototype))