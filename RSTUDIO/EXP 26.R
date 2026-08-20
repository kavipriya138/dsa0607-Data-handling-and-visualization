# SET 26 - Restaurant Orders

data <- data.frame(
  Order.ID = c(1,2,3,4,5),
  Items.Ordered = c(2,5,3,4,2),
  Bill.Amount = c(25,60,35,50,20),
  Dining.Type = c("Dine-In","Takeaway","Dine-In","Delivery","Takeaway")
)

# 25. Histogram of bill amounts
hist(data$Bill.Amount,
     main="Bill Amounts",
     xlab="Bill Amount",
     col="skyblue",
     border="black")

# 26. Pie chart of dining types
pie(table(data$Dining.Type),
    main="Dining Type Distribution",
    col=c("orange","lightgreen","pink"))

# 27. Bar chart of items ordered by order
barplot(data$Items.Ordered,
        names.arg=data$Order.ID,
        main="Items Ordered by Order",
        xlab="Order ID",
        ylab="Items Ordered",
        col="orange")

# 28. Scatter plot of items ordered vs bill amount
plot(data$Items.Ordered, data$Bill.Amount,
     main="Items Ordered vs Bill Amount",
     xlab="Items Ordered",
     ylab="Bill Amount",
     pch=19,
     col="blue")