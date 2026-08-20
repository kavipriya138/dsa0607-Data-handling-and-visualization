library(shiny)

# Data
month <- c("January", "February", "March", "April", "May")
sales <- c(15000, 18000, 22000, 20000, 23000)

product <- c("Product A", "Product B", "Product C", "Product D", "Product E")
product_sales <- c(50000, 65000, 42000, 70000, 60000)

ui <- fluidPage(
  
  titlePanel("Monthly Sales Dashboard"),
  
  sidebarLayout(
    sidebarPanel(
      h4("Sales Dashboard")
    ),
    
    mainPanel(
      plotOutput("linePlot"),
      plotOutput("barPlot")
    )
  )
)

server <- function(input, output) {
  
  output$linePlot <- renderPlot({
    plot(sales,
         type = "o",
         xaxt = "n",
         col = "blue",
         pch = 16,
         xlab = "Month",
         ylab = "Sales (in $)",
         main = "Monthly Sales")
    axis(1, at = 1:5, labels = month)
  })
  
  output$barPlot <- renderPlot({
    barplot(product_sales,
            names.arg = product,
            col = "lightgreen",
            xlab = "Products",
            ylab = "Sales (in $)",
            main = "Top-Selling Products")
  })
}

shinyApp(ui = ui, server = server)
