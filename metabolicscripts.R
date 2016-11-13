#Drosophila metabolic summary
dat<-read.csv("metabolicsummaryforR.csv")

library(lme4)
library(nlme)
m1<-lme(glucose~easw+sex+sugar+conc+sugar*conc, random=(~1|date), data=dat)
summary(m1)

#divide mass before inputting data sheet
#random date is good 