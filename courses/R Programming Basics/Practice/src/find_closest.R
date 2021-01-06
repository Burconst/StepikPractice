find_closest <- function(v, n) {
  which(abs(v - n)==abs(v - n)[which.min(abs(v - n))])
}