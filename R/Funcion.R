#' Show one of the 6 exercise of Assignment 1
#'
#' @param n a numeric value from 1 to 6
#' @return The script of the exercise
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







