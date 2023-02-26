library(readr)
library(dplyr)
library(tidyverse)

myData <- nycflights13::flights

#5.7.1 Ejercicios

#2. ¿Qué avión ( tailnum) tiene el peor récord de puntualidad?

RECORD_INPUNTUAL <- myData %>%
  filter(arr_delay>1200)
#kable(head(RECORD_INPUNTUAL))
#plot(RECORD_INPUNTUAL$tailnum)
