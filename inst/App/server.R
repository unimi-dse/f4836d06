server <- function(input, output) {
  data <- getDataset()
  y <- reactive({
    if(input$country == "Italy"){
      col <- 2
    }
    else if (input$country == "Germany"){
      col <- 3
    }
    else if(input$country == "France"){
      col <- 4
    }
    data[,col]
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

