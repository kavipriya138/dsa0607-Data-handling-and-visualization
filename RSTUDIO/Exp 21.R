# SET 21 - Movie Ratings

data <- data.frame(
  Movie.ID = c(1,2,3,4,5),
  Genre = c("Action","Comedy","Drama","Action","Comedy"),
  Rating = c(4.5,3.8,4.2,4.7,3.5),
  Duration = c(120,90,140,130,95)
)

# 5. Histogram of movie ratings
hist(data$Rating,
     main="Movie Ratings",
     xlab="Rating",
     col="skyblue",
     border="black")

# 6. Pie chart of genre distribution
pie(table(data$Genre),
    main="Genre Distribution",
    col=c("orange","lightgreen","pink"))

# 7. Bar chart of average ratings by genre
avg <- aggregate(Rating ~ Genre, data, mean)
barplot(avg$Rating,
        names.arg=avg$Genre,
        main="Average Rating by Genre",
        xlab="Genre",
        ylab="Average Rating",
        col="lightblue")

# 8. Scatter plot of duration vs rating
plot(data$Duration, data$Rating,
     main="Duration vs Rating",
     xlab="Duration (Min)",
     ylab="Rating",
     pch=19,
     col="blue")