###### Christina Botros
###### 03/07/2021
###### First Take at Survival Analysis 
###### Hampstead High Street 2010-2021

library(sp)
library(reshape2)
library(geojsonio)
library(rgdal)
library(downloader)
library(maptools)
library(dplyr)
library(broom) 
library(stplanr)
library(ggplot2)
library(MASS)
library(sf)
library(tmap)
library(tmaptools)
library(stringr)
library(leaflet)
library(tidyverse)
library(here)
library(downloader)
library(readxl)
library(janitor)


library(survival)

hamp <- read_csv("HampHS survival .csv")
names(hamp)
km.model <- survfit(Surv(Time, Death)~ 1,  data = hamp, type ="kaplan-meier")

plot(km.model, conf.int=F, xlab="Time (days)", ylab = "% Non-Vacant = S(t)", main= "KM-Model")
abline(v=4018, col="red")
abline(v=0, col="red")


#abline(h=0, col="red")
# las=1, mark.time=TRUE, abline(h=0, col="red")


