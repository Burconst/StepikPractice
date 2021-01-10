# Random walk with absorption
simulate_walk <- function(r = 6, n_max = 100, p = 1e-2) {
  current_position <- c(x = 0, y = 0)
  for (i in 1:n_max) {
    is_absorbed <- rbinom(1, 1, p)
    if (is_absorbed) return(list(status = "Absorbed", 
                                 positionX = current_position["x"],
                                 positionY = current_position["y"],
                                 steps = i))
    current_position["x"] <- current_position["x"] + rnorm(1)
    current_position["y"] <- current_position["y"] + rnorm(1)
    if (sqrt(current_position["x"]^2 + current_position["y"]^2) > r)
      return(list(status = "Breach",
                  positionX = current_position["x"],
                  positionY = current_position["y"],
                  steps = i))
  }
  return(list(status = "Max steps reached", 
              positionX = current_position["x"],
              positionY = current_position["y"],
              steps = n_max))
}

# Simulate results
result <- replicate(100000, simulate_walk(), simplify = FALSE)
result <- data.frame(
  status = sapply(result, function(x) x$status),
  positionX = sapply(result, function(x) x$positionX),
  positionY = sapply(result, function(x) x$positionY),
  steps = sapply(result, function(x) x$steps)
)

# Inspect results
tapply(result$positionY, result$status, length)
tapply(result$steps, result$status, mean)
