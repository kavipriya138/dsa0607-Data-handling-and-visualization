# Sales Data
jan <- c(2000,1500,1200)
feb <- c(2200,1800,1400)
mar <- c(2400,1600,1100)

months <- 1:3

plot(months, jan,
     type = "n",
     ylim = c(0,6000),
     xlab = "Month",
     ylab = "Sales",
     main = "Overall Sales Trend")

polygon(c(months, rev(months)),
        c(rep(0,3), rev(jan)),
        col = "lightblue")

polygon(c(months, rev(months)),
        c(jan, rev(jan + feb)),
        col = "lightgreen")

polygon(c(months, rev(months)),
        c(jan + feb, rev(jan + feb + mar)),
        col = "pink")

legend("topleft",
       legend = c("January","February","March"),
       fill = c("lightblue","lightgreen","pink"))