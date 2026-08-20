# Patient Health Risk Analysis

# Import CSV file
patient <- read.csv(file.choose())

# Display dataset
print(patient)

# ------------------------------------------------
# 1. Scatterplot Matrix
# ------------------------------------------------

pairs(patient[, c("Age", "BMI", "BP", "Cholesterol")],
      main = "Scatterplot Matrix of Health Indicators",
      pch = 19)

# ------------------------------------------------
# 2. Q-Q Plot for Cholesterol
# ------------------------------------------------

qqnorm(patient$Cholesterol,
       main = "Q-Q Plot of Cholesterol")

qqline(patient$Cholesterol)

# ------------------------------------------------
# ECDF for Cholesterol
# ------------------------------------------------

plot(ecdf(patient$Cholesterol),
     main = "ECDF of Cholesterol",
     xlab = "Cholesterol",
     ylab = "Cumulative Probability",
     verticals = TRUE,
     do.points = TRUE)

# ------------------------------------------------
# 3. Bar Chart of Average Health Indicators
# ------------------------------------------------

averages <- c(mean(patient$Age),
              mean(patient$BMI),
              mean(patient$BP),
              mean(patient$Cholesterol))

barplot(averages,
        names.arg = c("Age", "BMI", "BP", "Cholesterol"),
        main = "Average Health Indicators",
        xlab = "Health Indicators",
        ylab = "Average Value",
        ylim = c(0, max(averages) + 50))