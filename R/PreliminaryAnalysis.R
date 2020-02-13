#Import the dataset
setwd("/Users/andreafrattini/Desktop/University/Coding/Project")
data <- data.frame(read.csv("/Users/andreafrattini/Desktop/University/Coding/Project/PopularIndicators.csv", sep = ";"))

#A generic function that computes some basic preliminary funciotns and graphs
#' This function, given two numerical input, return some basic statistical operation
#' and graphs
#' @param x set of numerical input
#' @param y set of numerical input
#'
#' @return mean, variance, standard deviation, maximum value and its position, minimum value
#' and its position, correlation, simple regression, line plot, bar plot, box plot and scatter plot.
#' @export
#'
#' @examples
#' analysis(data$y,data$Italy)
analysis <- function(x,y){
  Mean <- mean(y)
  Var <- var(y)
  StDev <- sd(y)
  Max <- max(y)
  max <- which(y == Max)
  Min <- min(y)
  min <- which(y == Min)
  Cor <- cor(x,y)
  Reg <- lm( y ~ x)
  Sum <- summary(Reg)
  LinePlot <- plot_ly(data = data, x = ~x, y = ~y, type = "scatter",
                      mode = "line", color = I("green"))%>%
    layout( title = "Demographic Development",
            xaxis = list( title = "Years", ticks = "outside"),
            yaxis = list( title = "Population", ticks = "outside"))
  BarPlot <- plot_ly(data = data, x = ~x, y = ~y, type = "bar") %>%
    layout( title = "Demographic Development",
            xaxis = list( title = "Years", ticks = "outside"),
            yaxis = list( title = "Population", ticks = "outside"))
  BoxPlot <- plot_ly( y = ~y, type = "box", boxpoints = "all", color = I("orange")) %>%
    layout( title = "Demographic Development",
            yaxis = list ( title = "Population", ticks = "outside") )
  Scatter <- plot_ly(data = data, x = ~x, y = ~y, type = "scatter", mode = "markers",
                     marker = list(size = 10, color = 'red',line = list( color = 'black',
                    width = 2))) %>%
    layout(title = 'Demographic Development',
           xaxis = list(title = "Years", ticks = "outside"),
           yaxis = list(title = "Population", ticks = "outside"))
  values <- list( "Mean" = Mean, "Variance" = Var, "Standard Deviation" = StDev,
                  "Maximum Value" = Max, "Position of the maximun element" = max,
                  "Minimum Value"= Min, "Poistion of minimum element" = min,
                  "Correlation" = Cor, "Linear Regression" = Sum, "LinePlot" = LinePlot,
                  "Barplot" = BarPlot, "BoxPlot" = BoxPlot, "SCatter Plot" = Scatter)
  return(values)
}
