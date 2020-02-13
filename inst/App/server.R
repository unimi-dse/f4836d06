shiny::shinyServer(function(input, output) {
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
  output$plot <- plotly::renderPlotly({
    LinePlot <- plotly::plot_ly(data = data, x = data$Y, y = y(), type = "scatter",
                        mode = "line", color = I("green")) %>%
    layout( title = "Demographic Development",
              xaxis = list( title = "Years", ticks = "outside"),
              yaxis = list( title = "Population", ticks = "outside"))

  })

  output$plot1 <- plotly::renderPlotly({
    BarPlot <- plotly::plot_ly(data = data, x = data$Y, y = y(), type = "bar") %>%
    layout( title = "Demographic Development",
              xaxis = list( title = "Years", ticks = "outside"),
              yaxis = list( title = "Population", ticks = "outside"))
  })

  output$plot2 <- plotly::renderPlotly({
    BoxPlot <- plotly::plot_ly( y = y(), type = "box", boxpoints = "all", color = I("orange")) %>%
      layout( title = "Demographic Development",
              yaxis = list ( title = "Population", ticks = "outside") )
  })

  output$plot3 <- plotly::renderPlotly({
    Scatter <- plotly::plot_ly(data = data, x = data$Y, y = y(), type = "scatter", col = "blue")%>%
      layout(title = 'Demographic Development',
             xaxis = list(title = "Years", ticks = "outside"),
             yaxis = list(title = "Population", ticks = "outside"))
  })
})

