
# SET 23 - Airline Passengers

data <- data.frame(
  Passenger.ID = c(1,2,3,4,5),
  Age = c(28,45,33,52,39),
  Flight.Hours = c(2,8,5,10,6),
  Satisfaction = c("High","Medium","High","Low","Medium")
)

# 13. Histogram of passenger ages
hist(data$Age,
     main="Passenger Ages",
     xlab="Age",
     col="skyblue",
     border="black")

# 14. Pie chart of satisfaction levels
pie(table(data$Satisfaction),
    main="Satisfaction Levels",
    col=c("lightgreen","orange","pink"))

# 15. Bar chart of flight hours by passenger
barplot(data$Flight.Hours,
        names.arg=data$Passenger.ID,
        main="Flight Hours by Passenger",
        xlab="Passenger ID",
        ylab="Flight Hours",
        col="orange")

# 16. Scatter plot of age vs flight hours
plot(data$Age, data$Flight.Hours,
     main="Age vs Flight Hours",
     xlab="Age",
     ylab="Flight Hours",
     pch=19,
     col="blue")
