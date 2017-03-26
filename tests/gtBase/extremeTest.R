library(gtBase)
library(datasets)

test.extreme <- function() {
    
    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    extreme <- ExtremeTuples(
        test.data,
        max(Height),
        min(Weight)
    )

    extreme.results <- as.data.frame.data(extreme)

    checkTrue(extreme.results$Height == 72 && extreme.results$Weight == 164, 'Extreme Tuples test works')

}