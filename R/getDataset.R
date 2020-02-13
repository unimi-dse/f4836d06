#' getDataset: this function allows the user to get the dataset
#'
#' @return  dataset called "data"
#' @export
#'
#' @examples getData()
getDataset <- function(){

  dataset <- read.csv(system.file("extdata", "PopularIndicators.csv", package = "PreliminaryAnalysis"), sep = ";")

  return(dataset)

}

