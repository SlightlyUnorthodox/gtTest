library(gtBase)
library(datasets)

test.bloom.filter <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    bloom.results <- BloomFilter(
        test.data,
        Height
    )
    
    bloom.results <- as.numeric(as.data.frame(bloom.results))

    checkTrue(bloom.results == nrow(women) , "Bloom Filter test ran successfully")

}