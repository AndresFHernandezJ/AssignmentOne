library(dplyr)
library(nycflights13)

flights_enminutos <- mutate(flights,dep_time_minutos=(dep_time %/% 100 * 60 + dep_time %% 100) %% 1440,sched_dep_time_minutos=(sched_dep_time %/% 100 * 60 + sched_dep_time %% 100) %% 1440)


select(flights_enminutos,dep_time_minutos,sched_dep_time_minutos)
view



flights_comparacionreal <- mutate(flights,arr_time=((arr_time %/% 100*60)+(arr_time %%100))
                                  %%1440,dep_time=((dep_time %/% 100*60)+(dep_time %%100))%%1440,difference=arr_time-dep_time,comparation=air_time-difference)


head(flights_comparacionreal)
View(flights_comparacionreal)
