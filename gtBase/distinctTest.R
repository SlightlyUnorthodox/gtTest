library(gtBase)
library(datasets)

test.distint <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    distinct.results <- Distinct(
        test.data,
        inputs = c(Height, Weight)
    )
    
    distinct.results <- as.data.frame(distinct.results)
    distinct.results <- distinct.results[order(distinct.results$Height),]

    test.condition <- isTRUE(all.equal(distinct.results, women, check.attributes = FALSE))

    checkTrue(test.condition , "Distinct test ran successfully")

}