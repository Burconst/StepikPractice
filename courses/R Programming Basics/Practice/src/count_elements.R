count_elements <- function(x) {
  unq_values <- sort(unique(x))
  fr <- sapply(unq_values, function(n) length(x[x == n]))
  return(matrix(c(unq_values, fr), nrow = 2, byrow = T))
}
