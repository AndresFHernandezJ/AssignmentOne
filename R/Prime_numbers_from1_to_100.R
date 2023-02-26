# Prime numbers from 1 to 100
for (i in 2:100) {
  x <- 0
  for (j in 1:i) {
    if (i %% j == 0) {
      x <- x + 1
    } else{

    }
  }
  if (x <= 2) {
    head(i)
  }
}
