library(shiny)
library(plotly)
ui <- fluidPage(
  titlePanel("Development of population"),
  sidebarLayout(
    sidebarPanel(
      selectInput("country", "Select the country:", names(data),
                  choices= list("Italy", "Germany", "France")),
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
