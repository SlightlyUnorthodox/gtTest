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

    average.height.result <- as.data.frame.data(average.height)
    
    check.value <- grepl(paste0("average:",as.character(mean(women$height))), as.character(average.height.result))

    checkTrue(check.value , "Make GLA for average test ran successfully")

}