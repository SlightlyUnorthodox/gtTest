library(gtBase)
library(datasets)

test.histogram <- function() {
    
    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    histogram <- Histogram(
        test.data,
        length = Height
    )

    #checkTrue(test.condition, 'Histogram works')
}