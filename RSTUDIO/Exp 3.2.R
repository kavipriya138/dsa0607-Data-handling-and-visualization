# Create Data Frame
employee <- data.frame(
  EmployeeID = c(1,2,3,4,5),
  Department = c("Sales","HR","Marketing","Sales","HR"),
  YearsService = c(5,3,7,4,2),
  PerformanceScore = c(85,92,78,90,76)
)

# Department Count
dept_count <- table(employee$Department)

# Bar Chart
barplot(dept_count,
        col = c("red","green","blue"),
        main = "Employees by Department",
        xlab = "Department",
        ylab = "Number of Employees")
