# SET 25 - Daily Fitness Activity

data <- data.frame(
  User.ID = c(1,2,3,4,5),
  Steps = c(7000,10000,8500,12000,6500),
  Calories.Burned = c(250,400,320,500,220),
  Active.Minutes = c(40,60,50,75,35)
)

# 21. Histogram of daily steps
hist(data$Steps,
     main="Daily Steps",
     xlab="Steps",
     col="skyblue",
     border="black")

# 22. Pie chart of activity level categories
activity <- ifelse(data$Active.Minutes < 45, "Low",
                   ifelse(data$Active.Minutes <= 60, "Moderate", "High"))

pie(table(activity),
    main="Activity Level Categories",
    col=c("pink","orange","lightgreen"))

# 23. Bar chart of calories burned by user
barplot(data$Calories.Burned,
        names.arg=data$User.ID,
        main="Calories Burned by User",
        xlab="User ID",
        ylab="Calories Burned",
        col="orange")

# 24. Scatter plot of steps vs calories burned
plot(data$Steps, data$Calories.Burned,
     main="Steps vs Calories Burned",
     xlab="Steps",
     ylab="Calories Burned",
     pch=19,
     col="blue")