# Create Data Frame
product <- data.frame(
  ProductName = c("Product A","Product B","Product C","Product D","Product E"),
  Price = c(500,350,700,450,600),
  QuantityAvailable = c(250,175,300,200,220)
)

# Scatter Plot
plot(product$Price,
     product$QuantityAvailable,
     pch = 19,
     col = "blue",
     xlab = "Product Price",
     ylab = "Quantity Available",
     main = "Price vs Quantity Available")

# Regression Line
abline(lm(QuantityAvailable ~ Price, data = product),
       col = "red",
       lwd = 2)