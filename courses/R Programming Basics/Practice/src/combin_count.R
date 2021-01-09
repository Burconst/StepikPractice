combin_count <- function(n, k, with_repretitions = FALSE) {
  ifelse(with_repretitions,
         combin_count(n + k - 1, k),
         factorial(n)/(factorial(k)*factorial(n - k))) 
}
