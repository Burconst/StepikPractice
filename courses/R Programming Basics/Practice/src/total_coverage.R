
avain <- read.csv("src/avianHabitat.csv")
avain2 <- read.csv("src/avianHabitat2(clean).csv", comment.char = "%", sep = ";")

head(avain)
head(avain2)

summary(avain)
summary(avain2)

avain2 <- data.frame(avain2[1], data.frame("Observer" = rep("KL", nrow(avain2))), avain2[-1])

avain_new <- rbind(avain,avain2)
head(avain_new)
summary(avain_new)

coverage_vars <- names(avain_new)[-(1:4)][c(T,F)]
avain_new$total_coverage <- rowSums(avain_new[, coverage_vars])
summary(avain_new$total_coverage)

high_vars <- names(avain)[-(1:4)][c(F,T)]
summary(avain[high_vars])


