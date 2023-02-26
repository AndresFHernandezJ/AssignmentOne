#' retrieve_answer:Show the solution of one of the 6 exercise of Assignment 1
#'
#' The "retrieve_answer" is a function that shows the solution of one of the 6 assigned exercises corresponding to chapter 5 "Data Transformation" of R for Data Science where:
#' 1 = 5.2.4 Exercises: items 1, and 2
#' 2 = 5.3.1 Exercises: all items
#' 3 = 5.4.1 Exercises: items 2, 3, and 4
#' 4 = 5.5.2 Exercises: items 1, and 2
#' 5 = 5.6.7 Exercises: item 1
#' 6 = 5.7.1 Exercises: item 2#'
#'
#' @param n a numeric value from 1 to 6
#' @return The solution of the chosen exercise
#'
#'


retrieve_answer <- function(n) {
  if(n<1 | n>6) {
    print("Opción no valida, por favor escriba un numero entre 1 y 6")
  }else{
  Exercise <- switch(
    n,
    "1" = "R/Exercise_5_2_4.R",
    "2" = "R/Exercise_5_3_1.R",
    "3" = "R/Exercise_5_4_1.R",
    "4" = "R/Exercise_5_5_2.R",
    "5" = "R/Exercise_5_6_7.R",
    "6" = "R/Exercise_5_7_1.R"
  )
  source(Exercise)
  }
}







