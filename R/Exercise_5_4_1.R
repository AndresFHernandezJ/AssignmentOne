#Exercise 5.4.1
library(tidyverse)
library(nycflights13)

#2) What happens if you include the name of a variable multiple times in a select() call?
x <- flights %>%
  select(distance, distance, distance, distance, distance)
head(x)

#3) What does the any_of() function do?

#missing variables
w <- flights %>%
  select(any_of("distance"))
head(w)

#hide the variable
u <- flights %>%
  select(-any_of("distance"))
head(u)

#3.1) Why might it be helpful in conjunction with this vector?


vars <-
  c("year", "month", "day", "dep_delay", "arr_delay", "carrier")

#missing variables
z <- flights %>%
  select(-any_of(vars))
head(z)

#Hide the other variables

q <- flights %>%
  select(any_of(vars))
head(q)

#4Does the result of running the following code surprise you?
#4.1How do the select helpers deal with case by default? How can you change that default?

select(flights, contains("TIME"))

#4.2 How can you change that default?

#solution with any_of

library(tidyverse)
library(nycflights13)
vars <-
  c("dep_time",
    "sched_dep_time",
    "arr_time",
    "sched_arr_time",
    "air_time",
    "time_hour")
a <- flights %>%
  select(any_of(vars))
head(a)


