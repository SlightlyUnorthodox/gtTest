# Author: Dax Gerts (2017)
# Description: The main test script for gtTest

library(RUnit)

# Define testable libraries
all.testable.libraries <- c(
    "installation",
    "development",
    "gtBase",
    "gtStats",
    "gtSampling",
    "gtTranslator"
)

# Parse script input
args <- commandArgs(trailingOnly = TRUE)
if (is.na(args[1]) || nchar(as.character(args[1])) == 0) {
    libraries.to.test <- all.testable.libraries
} else {
    libraries.to.test <- trimws(unlist(strsplit(args[1],",")))
}

print(libraries.to.test)

# Define functions

DisplayEnvironmentInformation <- function() {
    # Display list of pertinent system information
    cat("System mode:", Sys.getenv("mode"), "\n")
}

CheckTestableLibraries <- function(libs, testable.libs) {
    verified.list.of.libs <- character()

    # Confirm lib is testable
    for(lib in libs) {
        if(lib %in% testable.libs) {
            verified.list.of.libs <- c(verified.list.of.libs, lib)
        } else {
            warning("Library,'", lib, "', is not a testable library.\n", sep = "")
        }
    }
    return(verified.list.of.libs)
}

RunTests <- function(libs = all.testable.libraries) {
    # For each testable library, run all .R files in directory
    path.names <- character()

    for(lib in libs) {
        path.names <- c(path.names, lib)   
    }

    test.suite <- defineTestSuite("Grokit Build Test", dirs = file.path(path.names), testFileRegexp = "\\.[rR]$")

    test.batch.results <- runTestSuite(test.suite)

    printTextProtocol(test.batch.results)
}

# Execute statements
DisplayEnvironmentInformation()

libraries.to.test <- CheckTestableLibraries(libraries.to.test, all.testable.libraries)

RunTests(libraries.to.test)