# Create Dataset
Login_Date <- as.Date(c("2025-01-05","2025-01-15",
                        "2025-02-08","2025-02-20",
                        "2025-03-12","2025-03-18"))

Quiz_Score <- c(78,85,65,92,70,88)

data <- data.frame(Login_Date, Quiz_Score)

# Extract Month
Month <- format(data$Login_Date,"%Y-%m")

# Average Quiz Score
monthly_avg <- aggregate(Quiz_Score ~ Month,
                         data=data,
                         mean)

print(monthly_avg)

# Line Chart
plot(monthly_avg$Quiz_Score,
     type="o",
     xaxt="n",
     xlab="Month",
     ylab="Average Quiz Score",
     main="Average Quiz Score Per Month",
     col="blue")

axis(1,
     at=1:nrow(monthly_avg),
     labels=monthly_avg$Month)

# Moving Average
moving_avg <- stats::filter(monthly_avg$Quiz_Score,
                            rep(1/2,2),
                            sides=1)

lines(moving_avg,
      type="o",
      col="red",
      lty=2)
