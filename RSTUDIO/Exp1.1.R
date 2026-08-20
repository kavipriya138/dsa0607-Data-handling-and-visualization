# Monthly Sales Dataset
month <- c("January", "February", "March", "April", "May")
sales <- c(15000, 18000, 22000, 20000, 23000)

# Line Chart
plot(sales,
     type = "o",
     xaxt = "n",
     col = "blue",
     pch = 16,
     xlab = "Month",
     ylab = "Sales (in $)",
     main = "Monthly Sales")

axis(1, at = 1:5, labels = month)