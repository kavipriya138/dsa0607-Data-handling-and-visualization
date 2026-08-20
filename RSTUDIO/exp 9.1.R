# Question 1: Grouped Bar Chart

# Creating dataset
survey <- data.frame(
  Survey_ID = c(1,2,3),
  Question1 = c("A","B","C")
)

# Counting responses
response_count <- table(survey$Question1)

# Creating grouped bar chart
barplot(response_count,
        main = "Distribution of Answers for Question 1",
        xlab = "Question 1 Responses",
        ylab = "Number of Responses",
        col = c("skyblue","orange","green"),
        legend = names(response_count))

