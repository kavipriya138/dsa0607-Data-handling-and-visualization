# Dataset
Age <- c(25,30,35,28,40)
Score <- c(4,5,3,4,5)

# Age Groups
AgeGroup <- ifelse(Age <= 30, "21-30", "31-40")

# Frequency Table
data <- table(AgeGroup, Score)

# Stacked Bar Chart
barplot(t(data),
        beside = FALSE,
        col = c("orange","skyblue"),
        legend = rownames(t(data)),
        main = "Satisfaction Scores by Age Group",
        xlab = "Satisfaction Score",
        ylab = "Number of Customers")

