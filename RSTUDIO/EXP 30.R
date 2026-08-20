# SET 30 - Music Streaming

data <- data.frame(
  Song.ID = c(1,2,3,4,5),
  Duration = c(3.5,4.2,3.8,5.0,4.1),
  Streams = c(150,200,180,250,170),
  Genre = c("Pop","Rock","Pop","Hip-Hop","Rock")
)

# 1. Histogram of song durations
hist(data$Duration,
     main="Song Duration",
     xlab="Duration (Min)",
     col="skyblue",
     border="black")

# 2. Pie chart of genre distribution
pie(table(data$Genre),
    main="Genre Distribution",
    col=c("orange","lightgreen","pink"))

# 3. Bar chart of average streams by genre
avg <- aggregate(Streams ~ Genre, data, mean)

barplot(avg$Streams,
        names.arg=avg$Genre,
        main="Average Streams by Genre",
        xlab="Genre",
        ylab="Average Streams (000s)",
        col="lightblue")

# 4. Scatter plot of duration vs streams
plot(data$Duration, data$Streams,
     main="Duration vs Streams",
     xlab="Duration (Min)",
     ylab="Streams (000s)",
     pch=19,
     col="blue")