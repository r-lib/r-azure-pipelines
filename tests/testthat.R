library(testthat)
library(azuretest)

test_check("azuretest", reporter = MultiReporter$new(reporters = list(CheckReporter$new(), JunitReporter$new(file = "test-results.xml"))))
