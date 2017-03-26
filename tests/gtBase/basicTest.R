library(gtBase)
library(datasets)

test.sum <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    sum.results <- Sum(
        test.data,
        Weight
    )
    
    sum.control <- sum(women$weight)
    sum.results <- as.numeric(as.data.frame(sum.results))

    checkTrue(sum.control == sum.results , "Sum test ran successfully")
}

test.mean <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    mean.results <- Mean(
        test.data,
        Weight
    )
    
    mean.control <- mean(women$weight)
    mean.results <- as.numeric(as.data.frame(mean.results))

    checkTrue(isTRUE(all.equal(mean.control, mean.results, tolerance = 0.0001)) , "Mean test ran successfully")
}

test.min <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    min.results <- Min(
        test.data,
        Weight
    )
    
    min.control <- min(women$weight)
    min.results <- as.numeric(as.data.frame(min.results))

    checkTrue(min.control == min.results , "Min test ran successfully")
}

test.max <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    max.results <- Max(
        test.data,
        Weight
    )
    
    max.control <- max(women$weight)
    max.results <- as.numeric(as.data.frame(max.results))

    checkTrue(max.control == max.results , "Max test ran successfully")
}

test.median <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    median.results <- Median(
        test.data,
        Weight
    )
    
    median.control <- median(women$weight)
    median.results <- as.numeric(as.data.frame(median.results))

    checkTrue(median.control == median.results , "Median test ran successfully")
}