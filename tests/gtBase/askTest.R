library(gtBase)

test.ask.for.number <- function() {

    DEACTIVATED("gtBase - Ask.R does not work in offline mode (needs grokit.jobid)")

    ask.options <- Ask(
        numerical_answer = integer(desc = "Pick a number from 1 to 10")
    )

    checkTrue(typeof(ask.options$numerical_answer) == 'integer', "Ask functionality works")

}