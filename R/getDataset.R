getDataset <- function(){

  dataset <- read.csv(system.file("extdata", "PopularIndicators.csv", package = "PreliminaryAnalysis"), sep = ";")

  return(dataset)

}

