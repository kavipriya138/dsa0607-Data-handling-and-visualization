# SET 29 - Water Samples

data <- data.frame(
  Sample.ID = c(1,2,3,4,5),
  pH.Level = c(7.2,6.8,7.5,6.5,7.1),
  Turbidity = c(3,5,2,7,4),
  Quality = c("Good","Fair","Good","Poor","Fair")
)

# 37. Histogram of pH levels
hist(data$`pH.Level`,
     main="pH Level Distribution",
     xlab="pH Level",
     col="skyblue",
     border="black")

# 38. Pie chart of water quality categories
pie(table(data$Quality),
    main="Water Quality Categories",
    col=c("lightgreen","orange","pink"))

# 39. Bar chart of turbidity by sample
barplot(data$Turbidity,
        names.arg=data$Sample.ID,
        main="Turbidity by Sample",
        xlab="Sample ID",
        ylab="Turbidity",
        col="orange")

# 40. Scatter plot of pH level vs turbidity
plot(data$`pH.Level`, data$Turbidity,
     main="pH Level vs Turbidity",
     xlab="pH Level",
     ylab="Turbidity",
     pch=19,
     col="blue")