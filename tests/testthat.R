library(testthat)
library(azuretest)

if (require("xml2")) {
  test_check("azuretest", reporter = MultiReporter$new(reporters = list(CheckReporter$new(), JunitReporter$new(file = "test-results.xml"))))
} else {
  test_check("azuretest")
}
