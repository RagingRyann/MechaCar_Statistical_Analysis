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
# T-Test to determine if PSI across all lots is statistically different from population mean. 
t.test(suspension_table$PSI, alternative=c("two.sided"),mu=1500)

# Three other R scripts to determine PSI for each manufacturing lot. 
lot_one <- suspension_table %>% filter(Manufacturing_Lot == "Lot1")
lot_two <- suspension_table %>% filter(Manufacturing_Lot == "Lot2")
lot_three <- suspension_table %>% filter(Manufacturing_Lot == "Lot3")

# T-tests of filtered lot tables. 
t.test(lot_one$PSI, alternative=c("two.sided"),mu=1500)
t.test(lot_two$PSI, alternative=c("two.sided"),mu=1500)
t.test(lot_three$PSI, alternative=c("two.sided"),mu=1500)