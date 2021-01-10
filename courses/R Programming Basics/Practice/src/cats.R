library(stringr)

cat_temper <- c("задиристый", "игривый", "спокойный", "ленивый")
cat_color <- c("белый", "серый", "чёрный", "рыжий")
cat_age <- c("кот", "котёнок")
cat_trait <- c("с умными глазами", "с острыми когтями", "с длинными усами")

combine <- function(...) {
  paste0(levels(interaction(..., sep = " ")))
}

cat_catalogue <- combine(cat_temper, cat_color, cat_age, cat_trait)

str_sort(cat_catalogue)[42]
