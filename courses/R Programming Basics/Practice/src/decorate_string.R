decorate_string <- function(pattern, ...) { 
  rev_pattern <- paste0(rev(unlist(strsplit(pattern, split = ""))), collapse = "")
  return(paste0(pattern, paste(...), rev_pattern)) 
}