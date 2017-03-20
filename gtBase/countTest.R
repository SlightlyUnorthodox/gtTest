library(gtBase)
library(datasets)

test.count <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    count.results <- Count(
        test.data,
        Height
    )
    
    count.results <- as.numeric(as.data.frame(count.results))

    checkTrue(count.results == nrow(women) , "Count test ran successfully")

}

test.count.distinct <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    count.distinct.results <- CountDistinct(
        test.data,
        Height
    )
    
    count.distinct.results <- as.numeric(as.data.frame(count.distinct.results))

    checkTrue(count.distinct.results == nrow(women) , "Count Distint test ran successfully")

}