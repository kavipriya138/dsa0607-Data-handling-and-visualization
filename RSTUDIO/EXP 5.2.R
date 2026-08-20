# Create Data Frame
website <- data.frame(
  Date = c("2023-01-01","2023-01-02","2023-01-03","2023-01-04","2023-01-05"),
  CTR = c(2.3,2.7,2.0,2.4,2.6)
)

# Bar Chart
barplot(website$CTR,
        names.arg = website$Date,
        col = "orange",
        main = "Click-Through Rate by Date",
        xlab = "Date",
        ylab = "CTR (%)")