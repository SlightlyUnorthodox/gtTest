library(gtBase)
library(datasets)

# Test shows bad default value for 'initial', easy fix in range.R
test.range.using.defaults <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    range.results <- Range(
        test.data,
        1
    )

    range.results <- as.data.frame(range.results)
    range.results <- range.results[order(range.results$Height),]
    
    print(range.results)
    
    test.condition <- isTRUE(all.equal(range.results, women + 1, check.attributes = FALSE))
    
    checkTrue(test.condition, 'Range test with increment one works')

}

test.range <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    range.results <- Range(
        test.data,
        1,
        initial = 1
    )
    
    range.results <- as.data.frame(range.results)
    range.results <- range.results[order(range.results$Height),]
    
    print(range.results)
    
    test.condition <- isTRUE(all.equal(range.results, women + 1, check.attributes = FALSE))
    
    checkTrue(test.condition, 'Range test with increment one works')

}