#Import the dataset
setwd("/Users/andreafrattini/Desktop/University/Coding/R-Project")
data <- data.frame(read.csv("/Users/andreafrattini/Desktop/University/Coding/R-Project/PopularIndicators.csv", sep = ";"))

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

  return(values)
}
