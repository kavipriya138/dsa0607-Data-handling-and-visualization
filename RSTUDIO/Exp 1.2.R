# Product Sales
product <- c("Product A", "Product B", "Product C", "Product D", "Product E")
product_sales <- c(50000, 65000, 42000, 70000, 60000)

# Bar Chart
barplot(product_sales,
        names.arg = product,
        col = "lightgreen",
        xlab = "Products",
        ylab = "Sales (in $)",
        main = "Top-Selling Products")