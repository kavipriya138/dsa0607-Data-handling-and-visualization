# Create Data Frame
employee <- data.frame(
  EmployeeID = c(1,2,3,4,5),
  Department = c("Sales","HR","Marketing","Sales","HR"),
  YearsService = c(5,3,7,4,2),
  PerformanceScore = c(85,92,78,90,76)
)

# Scatter Plot
plot(employee$YearsService,
     employee$PerformanceScore,
     pch = 19,
     col = "darkgreen",
     xlab = "Years of Service",
     ylab = "Performance Score",
     main = "Years of Service vs Performance Score")

# Regression Line
abline(lm(PerformanceScore ~ YearsService, data = employee),
       col = "red",
       lwd = 2)