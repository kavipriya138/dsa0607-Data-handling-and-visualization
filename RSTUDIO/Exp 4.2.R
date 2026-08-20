# Create Data Frame
product <- data.frame(
  ProductName = c("Product A","Product B","Product C","Product D","Product E"),
  QuantityAvailable = c(250,175,300,200,220),
  Category = c("Electronics","Electronics","Furniture","Furniture","Accessories")
)

# Create Table
stack_data <- table(product$Category, product$ProductName)

# Multiply by Quantity
stack_data <- stack_data * product$QuantityAvailable

# Stacked Bar Chart
barplot(stack_data,
        col = c("red","green","blue"),
        main = "Product Quantity by Category",
        xlab = "Products",
        ylab = "Quantity",
        legend = rownames(stack_data))