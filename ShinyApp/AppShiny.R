library(shiny)
library(plotly)
ui <- fluidPage(    
  titlePanel("Development of population"),
  sidebarLayout(
    sidebarPanel(
      selectInput("country", "Select the country:", names(data),
                  choices= list(
                    colnames(data[4]),
                    colnames(data[3]),
                    colnames(data[2]))),
      hr(),
      helpText("Data of total population of Italy, Germany and France provided by the World Bank")
    ),
    mainPanel(
      plotlyOutput("plot"),
      plotlyOutput("plot1"),
      plotlyOutput("plot2"),
      plotlyOutput("plot3")
    )
    
  ))
server <- function(input, output) {
  y <- reactive({
    data[,input$country]
  })
  output$plot <- renderPlotly({
    LinePlot <- plot_ly(data = data, x = data$Y, y = y(), type = "scatter",
                        mode = "line", color = I("green"))%>%
      layout( title = "Demographic Development",
              xaxis = list( title = "Years", ticks = "outside"),
              yaxis = list( title = "Population", ticks = "outside"))
    
  })
  
  output$plot1 <- renderPlotly({
    BarPlot <- plot_ly(data = data, x = data$Y, y = y(), type = "bar") %>%
      layout( title = "Demographic Development",
              xaxis = list( title = "Years", ticks = "outside"),
              yaxis = list( title = "Population", ticks = "outside"))
  })
  
  output$plot2 <- renderPlotly({
    BoxPlot <- plot_ly( y = y(), type = "box", boxpoints = "all", color = I("orange")) %>%
      layout( title = "Demographic Development",
              yaxis = list ( title = "Population", ticks = "outside") )
  })
  
  output$plot3 <- renderPlotly({
    Scatter <- plot_ly(data = data, x = data$Y, y = y(), type = "scatter", col = "blue") %>%
      layout(title = 'Demographic Development',
             xaxis = list(title = "Years", ticks = "outside"),
             yaxis = list(title = "Population", ticks = "outside"))
  })
}

shinyApp(ui,server)