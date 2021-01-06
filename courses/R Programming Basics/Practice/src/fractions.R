get_fractions <- function(m, n) {
  seqM <- seq(0, 1, by = 1/m)
  seqN <- seq(0, 1, by = 1/n)
  return(unique(sort(c(seqM, seqN), decreasing = TRUE)))
}