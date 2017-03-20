# gtTest

## Description

This package seeks to establish a comprehensive set of tests for the all Grokit libraries currently in use.

This list includes:

* intallation/setup tests
* gtBase/grokit
* gtTranslator

To be added in the future:

* gtStats/statistics
* gtSampling

## Usage

To run the complete list of available tests, use the following command from the gtTest directory:

```{bash}
Rscript run_tests.R
```

To run tests for only a specific library, "gtBase" for example, run the following command:

```{bash}
cd tests
Rscript run_tests.R "gtBase"
```

Or to run multiple specific tests at once, use the following format:

```{bash}
cd tests
Rscript run_tests.R "gtBase, gtSampling, gtTranslator"
```

## Goals

* Tests should be runnable quickly and with a single command.
* Tests should be easy to update when the underlying library changes.
* Tests should be runnable independently and be movable to other repositories if needbe.
