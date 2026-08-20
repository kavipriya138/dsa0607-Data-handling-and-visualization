library(wordcloud)

text <- c(
  "Great service",
  "Excellent support",
  "Friendly staff",
  "Great quality",
  "Excellent service"
)

wordcloud(text,
          colors = rainbow(5))

