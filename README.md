# f4836d06

# Preliminary Analysis Package

This package allows user to compute some basical statistical operations (like mean, variance, standard deviation, maximum value and its position, minimum value and its position, correlation and simple regression) of the total population of Italy, Germany and France in the period from 1970 to 2018, all with the function "analysis(x,y)". Furthermore, this package can plot some graphs that are useful for a preliminary analysis of the phenomenon of population's development, thanks to the function "PreAn()".
## Installation 

Install the R package 

```
devtools::install_github('unimi-dse/f4836d06')
```
Load the package

```
require(PreliminaryAnalysis)
```
## Usage
```
analysis(x,y)
```
This will compute the function but, to work correctly, it needs a data frame in the environment. To run this command with an example dataset (my dataset), please look at the help page of this function in the section "examples".
```
getDataset()
```
This function allows the user to get the complete dataset.

```
PreAn()
```
This will load the Shiny Application with my dataset.

## Documentation

The documentation of the function can be seen by typing:
```
help( package = "PreliminaryAnalysis")
```
## Technologies
* [Shiny](https://shiny.rstudio.com/)
* [Plotly](https://plot.ly/)
* R language
## Author
**Andrea Frattini** 
