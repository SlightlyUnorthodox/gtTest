library(gtBase)
library(datasets)

test.summary <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    summary.results <- Summary(
        test.data
    )
    
    summary.results <- as.data.frame(summary.results)

    checkTrue(TRUE , "Summary test ran successfully")

}