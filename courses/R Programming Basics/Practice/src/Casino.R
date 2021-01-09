generator <- function(set, prob = rep(1/length(set), length(set))) { 
  function(n) sample(n, x = set, prob = prob, replace = T)
} 

roulette_values <- c("Zero!", 1:36)
fair_roulette <- generator(roulette_values)
rigged_roulette <- generator(roulette_values,c(2/length(roulette_values), rep(35/36/length(roulette_values), length(roulette_values)-1)))
