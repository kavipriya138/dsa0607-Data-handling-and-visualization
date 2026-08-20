# Create Dataset
Study_Time <- c(2,3,4,5,6,2.5,3.5,4.5)
Quiz_Score <- c(60,68,75,82,95,70,78,88)
Videos_Watched <- c(5,8,10,12,15,7,9,11)

# Scatter Plot
plot(Study_Time,
     Quiz_Score,
     main="Study Time vs Quiz Score",
     xlab="Study Time (Hours)",
     ylab="Quiz Score",
     pch=19,
     col="blue",
     cex=Videos_Watched/5)