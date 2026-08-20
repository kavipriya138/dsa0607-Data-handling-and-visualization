# Create Dataset
survey <- data.frame(
  SurveyID = c(1,2,3),
  Q1 = c("A","B","C"),
  Q2 = c("B","A","A"),
  Q3 = c("C","D","B")
)

# Response Counts
responses <- rbind(
  table(factor(survey$Q1, levels=c("A","B","C","D"))),
  table(factor(survey$Q2, levels=c("A","B","C","D"))),
  table(factor(survey$Q3, levels=c("A","B","C","D")))
)

rownames(responses) <- c("Q1","Q2","Q3")

# Stacked Bar Chart
barplot(t(responses),
        col=c("red","blue","green","yellow"),
        legend.text=c("A","B","C","D"),
        main="Survey Responses",
        xlab="Questions",
        ylab="Frequency")