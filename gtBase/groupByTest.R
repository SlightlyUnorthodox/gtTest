library(gtBase)
library(datasets)

# Runnable Tests

test.groupby.mean <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    groupby.mean <- GroupBy(
        test.data,
        group = Height,
        count = Mean(Weight)
    )

    groupby.mean.results <- as.data.frame.data(groupby.mean)
    groupby.mean.results <- groupby.mean.results[order(groupby.mean.results$Height),]

    test.condition <- isTRUE(all.equal(groupby.mean.results, women, check.attributes = FALSE))
    
    checkTrue(test.condition, 'GroupBy for Mean works')
}

test.groupby.median <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    groupby.median <- GroupBy(
        test.data,
        group = Height,
        count = Median(Weight)
    )

    groupby.median.results <- as.data.frame.data(groupby.median)
    groupby.median.results <- groupby.median.results[order(groupby.median.results$Height),]

    test.condition <- isTRUE(all.equal(groupby.median.results, women, check.attributes = FALSE))
    
    checkTrue(test.condition, 'GroupBy for Median works')
}

test.groupby.count <- function() {
    
    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    groupby.count <- GroupBy(
        test.data,
        group = Height,
        count = Count()
    )

    groupby.count.results <- as.data.frame.data(groupby.count)
    groupby.count.results <- groupby.count.results[order(groupby.count.results$Height),]

    # Alter women table vals
    alt_women <- women
    alt_women$weight[!is.na(alt_women$weight)] <- 1

    test.condition <- isTRUE(all.equal(groupby.count.results, alt_women, check.attributes = FALSE))
    
    checkTrue(test.condition, 'GroupBy for Count works')
}

test.groupby.count.distinct <- function() {

    test.data <- ReadCSV("data/women_duplicates.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    groupby.distinct <- GroupBy(
        test.data,
        group = Height,
        count = Distinct(Weight)
    )

    groupby.distinct.results <- as.data.frame.data(groupby.distinct)
    groupby.distinct.results <- groupby.distinct.results[order(groupby.distinct.results$Height),]

    test.condition <- isTRUE(all.equal(groupby.distinct.results, women, check.attributes = FALSE))
    
    checkTrue(test.condition, 'GroupBy for Distinct works')
}

test.groupby.min <- function() {
    
    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    groupby.min <- GroupBy(
        test.data,
        group = Height,
        count = Min(Weight)
    )

    groupby.min.results <- as.data.frame.data(groupby.min)
    groupby.min.results <- groupby.min.results[order(groupby.min.results$Height),]

    test.condition <- isTRUE(all.equal(groupby.min.results, women, check.attributes = FALSE))
    
    checkTrue(test.condition, 'GroupBy for Min works')
}

test.groupby.max <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    groupby.max <- GroupBy(
        test.data,
        group = Height,
        count = Max(Weight)
    )

    groupby.max.results <- as.data.frame.data(groupby.max)
    groupby.max.results <- groupby.max.results[order(groupby.max.results$Height),]

    test.condition <- isTRUE(all.equal(groupby.max.results, women, check.attributes = FALSE))
    
    checkTrue(test.condition, 'GroupBy for Max works')
}

test.groupby.sum <- function() {
    
    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    groupby.sum <- GroupBy(
        test.data,
        group = Height,
        count = Sum(Weight)
    )

    groupby.sum.results <- as.data.frame.data(groupby.sum)
    groupby.sum.results <- groupby.sum.results[order(groupby.sum.results$Height),]

    test.condition <- isTRUE(all.equal(groupby.sum.results, women, check.attributes = FALSE))
    
    checkTrue(test.condition, 'GroupBy for Sum works')

}
