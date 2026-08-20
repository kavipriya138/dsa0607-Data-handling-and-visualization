# Create Interaction Data
likes <- c(100,120,110,130,140)
shares <- c(40,50,45,55,60)
comments <- c(20,25,22,28,30)

# Stacked Area Chart
x <- 1:5

plot(x, likes,
     type = "n",
     ylim = c(0,250),
     xlab = "Day",
     ylab = "Interactions",
     main = "User Interactions")

polygon(c(x, rev(x)),
        c(rep(0,5), rev(likes)),
        col = "lightblue")

polygon(c(x, rev(x)),
        c(likes, rev(likes + shares)),
        col = "lightgreen")

polygon(c(x, rev(x)),
        c(likes + shares, rev(likes + shares + comments)),
        col = "pink")

legend("topleft",
       legend = c("Likes","Shares","Comments"),
       fill = c("lightblue","lightgreen","pink"))