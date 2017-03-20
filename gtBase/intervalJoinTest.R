library(gtBase)
library(datasets)

test.interval.join <- function() {

    DEACTIVATED("gtBase - interval.join.R lacks sufficient documentation")

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

}