dice_roll <- function(n) {
  x <- runif(n)
  ifelse(x > 5/6, "1",
         ifelse(x > 2/3, "2",
                ifelse(x > 1/2, "3",
                       ifelse(x > 1/3, "4",
                              ifelse(x > 1/6, "5", "6")))))
}