# Create Data Frame
customer <- data.frame(
  CustomerID = c(1,2,3),
  Gender = c("Female","Male","Female")
)

# Count Gender
gender_count <- table(customer$Gender)

# Pie Chart
pie(gender_count,
    col = c("pink","lightblue"),
    main = "Gender Distribution")