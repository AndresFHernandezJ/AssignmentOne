#Exercise 5.4.1
library(tidyverse)
library(nycflights13)

#2) What happens if you include the name of a variable multiple times in a select() call?
#nikolas riapira
x <- flights %>%
  select(distance, distance, distance, distance, distance)
  view(x)

#3) What does the any_of() function do?

  #missing variables
  w <- flights %>%
    select(any_of("distance"))
  view(w)

  #hide the variable
  u <- flights %>%
    select(-any_of("distance"))
<<<<<<< HEAD
<<<<<<<< HEAD:Exercise_5_4_1.R
=======
<<<<<<< HEAD:Exercise 5.4.1.R
  view(u)
=======
>>>>>>> fea201672a44887f2e8dd15fa29299de69b499ff
<<<<<<< HEAD:Exercise_5_4_1.R
  view(u)
=======
  view(w)
>>>>>>> 7621cb528ae0f8bf31137f3fb18d20c6ca840ae7:Exercise 5.4.1.R
<<<<<<< HEAD
========
  view(u)
>>>>>>>> fea201672a44887f2e8dd15fa29299de69b499ff:Exercise 5.4.1.R
=======
>>>>>>> b8d606487e7ec6421cf3bfd527a66ec342df84a5:Exercise_5_4_1.R
>>>>>>> fea201672a44887f2e8dd15fa29299de69b499ff

#3.1) Why might it be helpful in conjunction with this vector?


  vars <- c("year", "month", "day", "dep_delay", "arr_delay", "carrier")

  #missing variables
    z <- flights %>%
      select(-any_of(vars))
    view(z)

  #Hide the other variables

<<<<<<< HEAD
<<<<<<<< HEAD:Exercise_5_4_1.R
=======
<<<<<<< HEAD:Exercise 5.4.1.R
    f <- flights %>%
      select(any_of(vars))
    view(f)
=======
>>>>>>> fea201672a44887f2e8dd15fa29299de69b499ff
<<<<<<< HEAD:Exercise_5_4_1.R
    q <- flights %>%
      select(any_of(vars))
    view(q)
=======
    z <- flights %>%
      select(any_of(vars))
    view(z)
>>>>>>> 7621cb528ae0f8bf31137f3fb18d20c6ca840ae7:Exercise 5.4.1.R
<<<<<<< HEAD
========
    f <- flights %>%
      select(any_of(vars))
    view(f)
>>>>>>>> fea201672a44887f2e8dd15fa29299de69b499ff:Exercise 5.4.1.R
=======
>>>>>>> b8d606487e7ec6421cf3bfd527a66ec342df84a5:Exercise_5_4_1.R
>>>>>>> fea201672a44887f2e8dd15fa29299de69b499ff

#4Does the result of running the following code surprise you?
#4.1How do the select helpers deal with case by default? How can you change that default?

  select(flights, contains("TIME"))

#4.2 How can you change that default?

  #solution with any_of

  library(tidyverse)
  library(nycflights13)
  vars <- c("dep_time", "sched_dep_time", "arr_time", "sched_arr_time", "air_time","time_hour")
  a <- flights %>%
    select(any_of(vars))
  view(a)



