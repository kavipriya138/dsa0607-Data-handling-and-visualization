# Advertising Budget
advertising <- c(2000, 2500, 3000, 2800, 3500)

# Scatter Plot
plot(advertising,
     sales,
     pch = 19,
     col = "red",
     xlab = "Advertising Budget (in $)",
     ylab = "Monthly Sales (in $)",
     main = "Advertising Budget vs Monthly Sales")

# Add Trend Line
abline(lm(sales ~ advertising), col = "blue", lwd = 2)