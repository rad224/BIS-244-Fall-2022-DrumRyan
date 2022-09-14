library(tidyverse)

#Read us-states.csv into RStudio data frame

setwd("~/Assignment2.R")
STATES <- read.csv("us-states.csv")

View(STATES)

options(max.print=999999)

state<-"Pennsylvania"

#Use Filter to get only Pennsylvania 


PENNSYLVANIA <-filter(STATES,state=="Pennsylvania")


View(PENNSYLVANIA)

#Set n to length of data set

n <-length(PENNSYLVANIA$date)

#Making variables

PENNSYLVANIA$incr_cases <-3

PENNSYLVANIA$incr_deaths <-1


#Solve for change in COVID cases and deaths


for (i in 2:n)
  
{PENNSYLVANIA$incr_cases[i] <- (PENNSYLVANIA$cases[i]-PENNSYLVANIA$cases[i-1])}

for (i in 2:n) 
  
{PENNSYLVANIA$incr_deaths[i] <- (PENNSYLVANIA$deaths[i]-PENNSYLVANIA$deaths[i-1])}

#Find standard deviation of incr_cases


sd(PENNSYLVANIA$incr_cases)
