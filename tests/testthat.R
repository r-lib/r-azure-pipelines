library(testthat)
library(azuretest)

if (requireNamespace("xml2")) {
  test_check("azuretest", reporter = MultiReporter$new(reporters = list(JunitReporter$new(file = "test-results.xml"), CheckReporter$new())))
} else {
  test_check("azuretest")
}
