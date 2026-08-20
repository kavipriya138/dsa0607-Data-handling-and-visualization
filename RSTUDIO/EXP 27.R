# SET 27 - Power Plant Operations

data <- data.frame(
  Plant.ID = c(1,2,3,4,5),
  Output.MW = c(120,150,100,170,110),
  Temperature = c(65,70,60,75,62),
  Status = c("Active","Active","Maintenance","Active","Maintenance")
)

# 29. Histogram of power output
hist(data$Output.MW,
     main="Power Output",
     xlab="Output (MW)",
     col="skyblue",
     border="black")

# 30. Pie chart of plant status
pie(table(data$Status),
    main="Plant Status",
    col=c("lightgreen","orange"))

# 31. Bar chart of temperatures by plant
barplot(data$Temperature,
        names.arg=data$Plant.ID,
        main="Temperature by Plant",
        xlab="Plant ID",
        ylab="Temperature",
        col="orange")

# 32. Scatter plot of output vs temperature
plot(data$Output.MW, data$Temperature,
     main="Output vs Temperature",
     xlab="Output (MW)",
     ylab="Temperature",
     pch=19,
     col="blue")