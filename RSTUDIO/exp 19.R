# ============================================================
# SET 19 - MOBILE APP USAGE ANALYSIS
# ============================================================

# Load packages
library(ggplot2)
library(dplyr)


# ============================================================
# IMPORT DATASET
# ============================================================

# A file selection window will open
data <- read.csv(file.choose())

# View dataset
print(data)

# Check structure
str(data)


# ============================================================
# QUESTION 1
# HISTOGRAM AND DENSITY PLOT FOR SCREEN TIME
# ============================================================

# Histogram
ggplot(data, aes(x = Screen_Time_hrs)) +
  geom_histogram(
    bins = 6,
    fill = "skyblue",
    color = "black"
  ) +
  labs(
    title = "Distribution of Screen Time",
    x = "Screen Time (Hours)",
    y = "Number of Users"
  ) +
  theme_minimal()


# Density plot
ggplot(data, aes(x = Screen_Time_hrs)) +
  geom_density(
    fill = "orange",
    alpha = 0.5
  ) +
  labs(
    title = "Density Plot of Screen Time",
    x = "Screen Time (Hours)",
    y = "Density"
  ) +
  theme_minimal()


# Screen-time summary
cat("\n--- SCREEN TIME SUMMARY ---\n")
print(summary(data$Screen_Time_hrs))


# ============================================================
# QUESTION 2
# SCATTER PLOT: DATA USED VS SCREEN TIME
# ============================================================

ggplot(data,
       aes(x = Screen_Time_hrs,
           y = Data_Used_GB)) +
  geom_point(
    size = 4,
    color = "blue"
  ) +
  geom_smooth(
    method = "lm",
    se = FALSE,
    color = "red"
  ) +
  labs(
    title = "Screen Time vs Data Used",
    x = "Screen Time (Hours)",
    y = "Data Used (GB)"
  ) +
  theme_minimal()


# Calculate correlation
correlation <- cor(
  data$Screen_Time_hrs,
  data$Data_Used_GB
)

cat("\n--- CORRELATION ---\n")
cat("Correlation between Screen Time and Data Used =",
    round(correlation, 3), "\n")


# ============================================================
# QUESTION 3
# AVERAGE SATISFACTION BY GENDER
# ============================================================

gender_average <- data %>%
  group_by(Gender) %>%
  summarise(
    Average_Satisfaction = mean(Satisfaction)
  )

# Display averages
cat("\n--- AVERAGE SATISFACTION BY GENDER ---\n")
print(gender_average)


# Bar chart
ggplot(
  gender_average,
  aes(
    x = Gender,
    y = Average_Satisfaction,
    fill = Gender
  )
) +
  geom_bar(
    stat = "identity"
  ) +
  geom_text(
    aes(
      label = round(Average_Satisfaction, 2)
    ),
    vjust = -0.5
  ) +
  labs(
    title = "Average Satisfaction by Gender",
    x = "Gender",
    y = "Average Satisfaction Score"
  ) +
  theme_minimal() +
  theme(legend.position = "none")


# ============================================================
# ADDITIONAL SUMMARY
# ============================================================

cat("\n--- COMPLETE SUMMARY ---\n")
print(summary(data))