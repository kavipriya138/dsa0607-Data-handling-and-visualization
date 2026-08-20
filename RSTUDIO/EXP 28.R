# SET 28 - Social Media Posts

data <- data.frame(
  Post.ID = c(1,2,3,4,5),
  Likes = c(120,200,150,300,180),
  Comments = c(15,30,20,40,25),
  Shares = c(10,20,12,35,18)
)

# 33. Histogram of likes
hist(data$Likes,
     main="Likes Distribution",
     xlab="Likes",
     col="skyblue",
     border="black")

# 34. Pie chart of total engagement components
engagement <- c(
  Likes=sum(data$Likes),
  Comments=sum(data$Comments),
  Shares=sum(data$Shares)
)

pie(engagement,
    main="Total Engagement Components",
    col=c("orange","lightgreen","pink"))

# 35. Bar chart of comments by post
barplot(data$Comments,
        names.arg=data$Post.ID,
        main="Comments by Post",
        xlab="Post ID",
        ylab="Comments",
        col="orange")

# 36. Scatter plot of likes vs shares
plot(data$Likes, data$Shares,
     main="Likes vs Shares",
     xlab="Likes",
     ylab="Shares",
     pch=19,
     col="blue")