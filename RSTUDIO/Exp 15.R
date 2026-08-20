# Import CSV file
student <- read.csv(file.choose())

# Display dataset
print(student)

# Convert Exam_Date into Date format
student$Exam_Date <- as.Date(student$Exam_Date)

# Average Math Score by Gender
avg_math <- aggregate(Math_Score ~ Gender,
                      data = student,
                      FUN = mean)

print(avg_math)

# Bar Chart
barplot(avg_math$Math_Score,
        names.arg = avg_math$Gender,
        main = "Average Math Score by Gender",
        xlab = "Gender",
        ylab = "Average Math Score",
        ylim = c(0, 100))

# Line Chart
plot(student$Exam_Date,
     student$Math_Score,
     type = "o",
     main = "Math Score Trend Over Time",
     xlab = "Exam Date",
     ylab = "Math Score",
     ylim = c(0, 100))
