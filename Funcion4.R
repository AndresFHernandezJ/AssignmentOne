#' Show one of the 6 exercise of Assignment 1
#'
#' @param n a numeric value from 1 to 6
#' @return The script of the exercise
#' @example
#' retrieve_answer(1)
#'


retrieve_answer <- function(n) {
  Exercise <- switch(n,
                     "1" = "Exercise_5_2_4.R",
                     #"2" = "Exercise_5_3_1.R",
                     "3" = "Exercise_5_4_1.R")
  #"4" = "Exercise_5_5_2.R",
  #"5" = "Exercise_5_6_7.R",
  #"6" = "Exercise_5_7_1.R")

  source(Exercise)
}




