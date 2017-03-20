library(datasets)

# Runnable Tests

test.gtBase.installed <- function() {

    is.installed = require(gtBase)
    checkTrue(is.installed, 'gtBase is installed')
}

test.gtSampling.installed <- function() {

    is.installed = require(gtSampling)
    checkTrue(is.installed, 'gtSampling is installed')
}

test.gtStats.installed <- function() {

    is.installed = require(gtStats)
    checkTrue(is.installed, 'gtStats is installed')
}

test.gtTranslator.installed <- function() {

    is.installed = require(gtTranslator)
    checkTrue(is.installed, 'gtTranslator is installed')
}


