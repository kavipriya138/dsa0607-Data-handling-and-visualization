# Satisfaction Scores
Score <- c(4, 5, 3, 4, 5)

# Count frequencies
count <- table(Score)

# Pie chart
pie(count,
    main = "Customer Satisfaction Scores",
    col = c("red", "green", "blue"))