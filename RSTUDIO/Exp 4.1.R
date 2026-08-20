# Create Data Frame
product <- data.frame(
  ProductID = c(1,2,3,4,5),
  ProductName = c("Product A","Product B","Product C","Product D","Product E"),
  QuantityAvailable = c(250,175,300,200,220)
)

# Bar Chart
barplot(product$QuantityAvailable,
        names.arg = product$ProductName,
        col = "skyblue",
        main = "Quantity of Each Product",
        xlab = "Product Name",
        ylab = "Quantity Available")D