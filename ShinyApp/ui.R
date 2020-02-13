library(shiny)
library(plotly)
ui <- fluidPage(    
  titlePanel("Development of population"),
  sidebarLayout(
    sidebarPanel(
      selectInput("country", "Select the country:", names(data),
                  choices= list(
                    colnames(data[2]),
                    colnames(data[3]),
                    colnames(data[4]))),
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
shinyApp(ui,server)