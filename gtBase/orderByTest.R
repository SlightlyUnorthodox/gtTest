library(gtBase)
library(datasets)

test.orderby <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    orderby <- GroupBy(
        test.data,
        group = Height,
        count = Mean(Weight)
    )

    orderby <- OrderBy(orderby, asc(Height))

    orderby.results <- as.data.frame.data(orderby)

    print(orderby.results)

    test.condition <- isTRUE(all.equal(orderby.results, women, check.attributes = FALSE))
    
    checkTrue(test.condition, 'OrderBy works')
}