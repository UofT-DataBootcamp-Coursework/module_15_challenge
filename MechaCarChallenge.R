# Install required packages
install.packages("tidyverse")
install.packages("pastecs")
library(pastecs)
library(ggplot2)
library(dplyr)
# Create tables from datasets
mechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F)
suspension_coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F)

# Multiple Linear Regression: mechacar mpg dataset
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_table))

# Summary Statistics: suspension coil dataset
options(scipen=100)
options(digits=2)
stat.desc(suspension_coil_table$PSI)

# T-Test: suspension coil dataset 
# Test for normalcy - visualize the distribution 
ggplot(suspension_coil_table,aes(x=PSI)) + geom_density()

# One-Sample T-Test - compare sample to population means
t.test(suspension_coil_table$PSI,mu=1500)

