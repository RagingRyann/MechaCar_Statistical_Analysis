library(dplyr)
# Import dataset
mpg_prototype <- read.csv('MechaCar_mpg.csv')
head(mpg_prototype)

# Generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_prototype)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_prototype))

# Import suspension coil data as table.
suspension_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), 
                                                                              Variance=var(PSI), SD=sd(PSI))
