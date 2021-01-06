is_monotone <- function(x) {
  dx <- x[-1] - x[-length(x)]
  return(all(dx >= 0) || all(dx <= 0))
}