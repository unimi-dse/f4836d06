#' data: this function allowa the use to import the dataset used in this package
#'
#' @return a dataset called "data"
#' @export
#'
#' @examples data()
data <- function(){
  data <- data.frame(getDataset())
  return(data)
}
