# Import dataset manually
energy <- read.csv(file.choose())

# 2. Scatter Plot

library(ggplot2)

ggplot(energy,
       aes(x = Temperature,
           y = Units_Consumed,
           size = Peak_Hours)) +
  geom_point(alpha = 0.5) +
  labs(title = "Temperature vs Units Consumed",
       x = "Temperature (°C)",
       y = "Units Consumed (kWh)",
       size = "Peak Hours")

# 3. Average Renewable Usage by Sector
average_renewable <- aggregate(
  Renewable_Usage ~ Sector,
  data = energy,
  FUN = mean
)

print(average_renewable)

# Bar Chart
ggplot(average_renewable,
       aes(x = Sector,
           y = Renewable_Usage)) +
  geom_bar(stat = "identity") +
  labs(title = "Average Renewable Usage by Sector",
       x = "Sector",
       y = "Average Renewable Usage (%)")