# Create Sales Data
sales <- matrix(c(2000,2200,2400,
                  1500,1800,1600,
                  1200,1400,1100),
                nrow = 3,
                byrow = TRUE)

colnames(sales) <- c("January","February","March")
rownames(sales) <- c("Product A","Product B","Product C")

# Grouped Bar Chart
barplot(sales,
        beside = TRUE,
        col = c("red","green","blue"),
        main = "Quarterly Product Sales",
        xlab = "Months",
        ylab = "Sales")

legend("topleft",
       legend = rownames(sales),
       fill = c("red","green","blue"))