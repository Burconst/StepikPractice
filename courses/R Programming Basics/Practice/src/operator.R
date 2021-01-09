"%+%" <- function(x, y) {
  min_length <- min(length(x),length(y))
  res_vector <- rep(NA, max(length(x),length(y)))
  res_vector[1:min_length] <- x[1:min_length] + y[1:min_length]
  return(res_vector)
}

1:5 %+% 1:2   # c(2, 4, NA, NA, NA)
5 %+% c(2, 6) # c(7, NA) 
