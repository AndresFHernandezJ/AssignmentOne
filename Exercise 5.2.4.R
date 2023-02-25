library(nycflights13)
library(tidyverse)
view(flights)
#5.2.4.1
#1)Had an arrival delay of two or more hours
Arrival_Delay <- flights %>%
  filter(arr_delay >= 120)
View(Arrival_Delay)
#2)Flew to Houston (IAH or HOU)
Houston_destiny <- flights %>%
  filter(dest == "HOU" | dest == "IAH")
view(Houston_destiny)
#3)Were operated by United, American, or Delta
Operated_by <- flights %>% 
  filter(carrier %in% c("UA", "AA", "DL"))
view(Operated_by)
#4)Departed in summer (July, August, and September)
Summer_dep <- flights %>% 
  filter(month >= 7 & month <= 9)
view(Summer_dep)
#5)Arrived more than two hours late, but didn’t leave late
LateArr_timeLeft <- flights %>% 
  filter(arr_delay > 120 & dep_delay <= 0)
view(LateArr_timeLeft)
#6)Were delayed by at least an hour, but made up over 30 minutes in flight
Delayed1H <- flights %>% 
  filter(dep_delay >= 60 &  dep_delay - arr_delay > 30)
view(Delayed1H)
#7)Departed between midnight and 6am (inclusive)
Midnight_to_6am <- flights %>% 
  filter(dep_time >=0 & dep_time <= 600)
view(Midnight_to_6am)
#------------------------------------------------------------------------------
#5.2.4.2 Between
#1)Had an arrival delay of two or more hours
Arrival_Delay2 <- flights %>%
  filter(between(arr_delay, 120, Inf))
View(Arrival_Delay2)
#2)Flew to Houston (IAH or HOU)
Houston_destiny2 <- flights %>%
  filter(between(dest, "HOU","IAH"))
view(Houston_destiny2)
#3)Were operated by United, American, or Delta (Between solo deja usar dos parametros no 3)
Operated_by2 <- flights %>% 
  filter(between(carrier,"UA", "AA", "DL"))
view(Operated_by2)
#4)Departed in summer (July, August, and September)
Summer_dep2 <- flights %>% 
  filter(between(month, 7, 9))
view(Summer_dep2)
#5)Arrived more than two hours late, but didn’t leave late (Columnas diferentes)
LateArr_timeLeft2 <- flights %>% 
  filter(arr_delay > 120 & dep_delay <= 0) 
view(LateArr_timeLeft2)
#6)Departed between midnight and 6am (inclusive) (Columnas diferentes)
Delayed1H2 <- flights %>% 
  filter(dep_delay >= 60 & air_time>30) 
view(Delayed1H2)
#7)Departed between midnight and 6am (inclusive)
Midnight_to_6am2 <- flights %>% 
  filter(between(dep_time, 0, 600))
view(Midnight_to_6am2)
  

