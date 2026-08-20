# Create Dataset
Course <- c("R","Python","SQL","Python","R","SQL","R","Python")
Quiz_Score <- c(78,85,65,92,70,88,81,76)

data <- data.frame(Course, Quiz_Score)

# Histogram
hist(data$Quiz_Score,
     main="Histogram of Quiz Scores",
     xlab="Quiz Score",
     col="lightblue",
     border="black")

# Boxplot
boxplot(Quiz_Score ~ Course,
        data=data,
        main="Quiz Score by Course",
        xlab="Course",
        ylab="Quiz Score",
        col=c("pink","lightgreen","lightyellow"))