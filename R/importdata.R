#' importdata: this function allowa the use to import the dataset used in this package
#'
#' @return a dataset called "data"
#' @export
#'
#' @examples importdata()
importdata <- function(){
  data <- data.frame(getDataset())
  return(data)
}
