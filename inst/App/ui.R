
shiny::shinyUI( fluidPage(
  titlePanel("Development of population"),
  sidebarLayout(
    sidebarPanel(
      selectInput("country", "Select the country:", names(data),
                  choices= list("Italy", "Germany", "France")),
      hr(),
      helpText("Data of total population of Italy, Germany and France provided by the World Bank")
    ),
    mainPanel(
      plotly::plotlyOutput("plot"),
      plotly::plotlyOutput("plot1"),
      plotly::plotlyOutput("plot2"),
      plotly::plotlyOutput("plot3")
    )

  ))
)
