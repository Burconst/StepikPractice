build_ziggurat <- function(n) {
  m1 <- matrix(n, ncol = 2*n-1, nrow = 2*n-1)
  m1[1:n,1:n] <- 1:n
  m1[lower.tri(m1)] <- t(m1)[lower.tri(m1)]
  m1[n-1+1:n,1:n] <- m1[n:1,1:n]
  m1[,n-1+1:n] <-  m1[,n:1] 
  return(m1)
}