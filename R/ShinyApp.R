#' ShinyApp: this function allows the user to create some interactive grpahs with shiny and plotly
#'
#' @return Line plot, bar plot, box plot, scatter plot
#' @export
#'
#' @examples PreAn()
PreAn <- function (){

  shiny::runApp(system.file("App", package = "PreliminaryAnalysis"), launch.browser = T)

}
