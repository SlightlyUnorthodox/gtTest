library(gtBase)
library(datasets)

test.bernoulli.all <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    bernoulli.results <- Bernoulli(
        test.data,
        p = 1
    )
    
    bernoulli.results <- as.data.frame(bernoulli.results)

    checkTrue(nrow(bernoulli.results) == nrow(women) , "Bernoulli test ran successfully")

}

test.bernoulli.none <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    bernoulli.results <- Bernoulli(
        test.data,
        p = 0
    )
    
    bernoulli.results <- as.data.frame(bernoulli.results)

    checkTrue(nrow(bernoulli.results) == 0 , "Bernoulli test ran successfully")

}
