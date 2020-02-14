#A generic function that computes some basic preliminary funciotns and graphs
#' This function, given two numerical input, return some basic statistical operation
#' @param x set of numerical input
#' @param y set of numerical input
#'
#' @return mean, variance, standard deviation, maximum value and its position, minimum value
#' and its position, correlation, simple regression, line plot, bar plot, box plot and scatter plot.
#' @export
#'
#' @examples To run an example, please, download an example dataset with this command:
#' data <- data.frame(getDataset()). Then, type and run: analysis(data$Y,data$Italy).
analysis <- function(x,y){
  data <- data.frame(getDataset())
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

  values <- list( "Mean" = Mean, "Variance" = Var, "Standard Deviation" = StDev,
      "Maximum Value" = Max, "Position of the maximun element" = max,
      "Minimum Value"= Min, "Poistion of minimum element" = min,
      "Correlation" = Cor, "Linear Regression" = Sum )
  return(values)
}
