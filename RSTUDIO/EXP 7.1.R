# Create Data Frame
customer <- data.frame(
  CustomerID = c(1,2,3),
  Age = c(28,35,42),
  Gender = c("Female","Male","Female"),
  Income = c(50000,60000,75000)
)

# Bar Chart
barplot(customer$Age,
        names.arg = customer$CustomerID,
        col = "skyblue",
        main = "Customer Age Distribution",
        xlab = "Customer ID",
        ylab = "Age")