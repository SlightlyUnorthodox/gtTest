library(gtBase)
library(datasets)

test.collect <- function() {

    DEACTIVATED("gtBase - Collect.R lacks sufficient documentation")

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    collect.results <- Collect(
        test.data,
        Height,
        Weight
    )
    
    collect.results <- as.data.frame(collect.results)

    print(collect.results)

    checkTrue(collect.results == nrow(women) , "Collect test ran successfully")

}