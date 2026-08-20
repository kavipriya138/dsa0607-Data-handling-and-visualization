# SET 22 - Library Usage

data <- data.frame(
  User.ID = c(1,2,3,4,5),
  Books.Borrowed = c(2,5,3,6,1),
  Days.Kept = c(10,25,14,30,7),
  Fine.Amount = c(0,15,0,20,0)
)

# 9. Histogram of books borrowed
hist(data$Books.Borrowed,
     main="Books Borrowed",
     xlab="Books Borrowed",
     col="skyblue",
     border="black")

# 10. Pie chart for users with and without fines
fine_status <- ifelse(data$Fine.Amount > 0, "With Fine", "Without Fine")
pie(table(fine_status),
    main="Users With and Without Fines",
    col=c("pink","lightgreen"))

# 11. Bar chart of fine amounts by user
barplot(data$Fine.Amount,
        names.arg=data$User.ID,
        main="Fine Amount by User",
        xlab="User ID",
        ylab="Fine Amount",
        col="orange")

# 12. Scatter plot of days kept vs fine amount
plot(data$Days.Kept, data$Fine.Amount,
     main="Days Kept vs Fine Amount",
     xlab="Days Kept",
     ylab="Fine Amount",
     pch=19,
     col="blue")