library(dplyr)
library(stringr)

options(stringsAsFactors = F)

avain <- read.csv("src/avianHabitat.csv")
head(avain)
summary(avain)
avain$site_name <- factor(str_replace(avain$Site, "[:digit:]+", ""))

avain %>% 
  select(contains("Ht"), Observer, site_name) %>% 
  group_by(site_name, Observer) %>% 
  
  summarise_each(length)
  

