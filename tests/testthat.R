library(testthat)
library(azuretest)

is_windows <- identical(tolower(Sys.info()[["sysname"]]), "windows")

test_check("azuretest", reporter = MultiReporter$new(reporters = list(CheckReporter$new(), JunitReporter$new(file = "test-results.xml"))))
