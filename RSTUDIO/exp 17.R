# Vehicle Performance Analysis

# Import CSV file
vehicle <- read.csv(file.choose())

# Display dataset
print(vehicle)


# -----------------------------------------
# 1. Violin Plot - Fuel Efficiency
#    by Safety Rating
# -----------------------------------------

ratings <- sort(unique(vehicle$Safety_Rating))

# Empty plot
plot(NA,
     xlim = c(0.5, length(ratings) + 0.5),
     ylim = range(vehicle$Fuel_Efficiency) + c(-1, 1),
     xaxt = "n",
     xlab = "Safety Rating",
     ylab = "Fuel Efficiency (km/l)",
     main = "Fuel Efficiency by Safety Rating")

axis(1, at = 1:length(ratings), labels = ratings)

# Draw violin shapes
for (i in 1:length(ratings)) {
  
  values <- vehicle$Fuel_Efficiency[
    vehicle$Safety_Rating == ratings[i]
  ]
  
  if (length(values) >= 2) {
    
    d <- density(values, adjust = 1)
    
    d$y <- d$y / max(d$y) * 0.35
    
    polygon(c(i - d$y, rev(i + d$y)),
            c(d$x, rev(d$x)),
            col = "lightblue",
            border = "black")
    
  } else {
    
    points(rep(i, length(values)),
           values,
           pch = 19)
  }
}


# -----------------------------------------
# 2. Scatter Plot
#    Horsepower vs Top Speed
# -----------------------------------------

plot(vehicle$Horsepower,
     vehicle$Top_Speed,
     pch = 19,
     main = "Horsepower vs Top Speed",
     xlab = "Horsepower",
     ylab = "Top Speed (km/h)")

# Regression line
model <- lm(Top_Speed ~ Horsepower, data = vehicle)
abline(model, lwd = 2)


# -----------------------------------------
# 3. Correlation Heatmap
# -----------------------------------------

numeric_data <- vehicle[, c("Engine_Size",
                            "Horsepower",
                            "Fuel_Efficiency",
                            "Top_Speed",
                            "Safety_Rating")]

cor_matrix <- cor(numeric_data)

print(cor_matrix)

heatmap(cor_matrix,
        main = "Correlation Heatmap",
        symm = TRUE)