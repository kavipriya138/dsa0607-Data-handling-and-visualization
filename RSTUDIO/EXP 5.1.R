# Create Data Frame
website <- data.frame(
  Date = as.Date(c("2023-01-01","2023-01-02","2023-01-03","2023-01-04","2023-01-05")),
  PageViews = c(1500,1600,1400,1650,1800),
  CTR = c(2.3,2.7,2.0,2.4,2.6)
)

# Line Chart
plot(website$Date,
     website$PageViews,
     type = "o",
     col = "blue",
     pch = 16,
     xlab = "Date",
     ylab = "Page Views",
     main = "Daily Page Views Trend")

legend("topleft",
       legend = "Page Views",
       col = "blue",
       lty = 1,
       pch = 16)