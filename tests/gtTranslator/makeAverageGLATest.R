library(gtBase)
library(gtTranslator)
library(datasets)
library(RUnit)

# Runnable Tests


test.makeGLA.average <- function() {

    test.data <- ReadCSV("data/women.csv", attributes = c(Height = INT, Weight = INT), header = TRUE, simple = TRUE)

    average <- MakeGLA(representation = list(count = integer, sum = double),
                    prototype = function(count = 0L, sum = 0){},
                    AddItem = function(x) {sum = sum + x; count = count + 1L},
                    AddState = function(o) {sum = sum + o$sum; count = count + o$count},
                    GetResult = function(result = JSON) {return(average = sum / count, sum = sum, count = count)})

    average.height <- average(test.data, inputs = Height, outputs = AVG_HEIGHT)

    average.height.result <- as.numeric(as.data.frame(average.height))
    
    checkTrue(isTRUE(all.equal(mean(women$height), average.height.result, tolerance = 0.0001)) , "Mean test ran successfully")

}