# Hospital Appointments - All 4 Plots

data <- data.frame(
  Patient.ID = c(1, 2, 3, 4, 5),
  Age = c(25, 40, 35, 50, 29),
  Waiting.Time.Days = c(2, 5, 1, 7, 3),
  Appointment.Status = c("Attended", "Missed", "Attended", "Missed", "Attended")
)

# 1. Histogram of Patient Ages
hist(data$Age,
     main = "Histogram of Patient Ages",
     xlab = "Age",
     ylab = "Number of Patients",
     col = "skyblue",
     border = "black")

# 2. Pie Chart of Appointment Status
status <- table(data$Appointment.Status)
pie(status,
    main = "Appointment Status Distribution",
    labels = paste(names(status), status),
    col = c("lightgreen", "pink"))

# 3. Bar Chart of Waiting Time by Patient
barplot(data$Waiting.Time.Days,
        names.arg = data$Patient.ID,
        main = "Waiting Time by Patient",
        xlab = "Patient ID",
        ylab = "Waiting Time (Days)",
        col = "orange")

# 4. Scatter Plot of Age vs Waiting Time
plot(data$Age, data$Waiting.Time.Days,
     main = "Age vs Waiting Time",
     xlab = "Age",
     ylab = "Waiting Time (Days)",
     pch = 19,
     col = "blue")
