# SET 24 - Hotel Bookings

data <- data.frame(
  Booking.ID = c(1,2,3,4,5),
  Stay.Nights = c(2,5,3,7,4),
  Guests = c(2,4,1,3,2),
  Room.Type = c("Standard","Deluxe","Standard","Suite","Deluxe")
)

# 17. Histogram of stay nights
hist(data$Stay.Nights,
     main="Stay Nights",
     xlab="Number of Nights",
     col="skyblue",
     border="black")

# 18. Pie chart of room types
pie(table(data$Room.Type),
    main="Room Type Distribution",
    col=c("orange","lightgreen","pink"))

# 19. Bar chart of guests per booking
barplot(data$Guests,
        names.arg=data$Booking.ID,
        main="Guests per Booking",
        xlab="Booking ID",
        ylab="Number of Guests",
        col="orange")

# 20. Scatter plot of guests vs stay nights
plot(data$Guests, data$Stay.Nights,
     main="Guests vs Stay Nights",
     xlab="Guests",
     ylab="Stay Nights",
     pch=19,
     col="blue")