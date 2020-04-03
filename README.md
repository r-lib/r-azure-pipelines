<!-- badges: start -->
[![Lifecycle: superseded](https://img.shields.io/badge/lifecycle-superseded-orange.svg)](https://www.tidyverse.org/lifecycle/#superseded)
[![Build Status](https://dev.azure.com/r-lib/r-azure-pipelines/_apis/build/status/r-lib.r-azure-pipelines?branchName=master)](https://dev.azure.com/r-lib/r-azure-pipelines/\_build/latest?definitionId=3&branchName=master)
<!-- badges: end -->

## R CI with Azure Pipelines

This repository includes templates for using azure pipelines with R packages,
as well as a simple R package for testing.

### Features

- Uses [RStudio docker](https://github.com/rstudio/r-docker) containers to test
  on R 3.2, 3.3, 3.4, 3.5, 3.6
- Installs package dependencies using [remotes](https://remotes.r-lib.org)
- Build and checks packages using [rcmdcheck](https://github.com/r-lib/rcmdcheck)
- Run code coverage using [covr](https://github.com/r-lib/covr)

- Linux
  - Matrix builds of minor R versions from 3.2+
  - Package caching
- Windows
  - RTools installation
- macOS

### Setup

Add a yaml file named `azure-pipelines.yml` with the following content, this
will setup your repo to use the tidyverse default configuration.

You need to replace REPLACE-ME with the name of your [Service
Connection](https://docs.microsoft.com/en-us/azure/devops/pipelines/library/service-endpoints?view=azure-devops&tabs=yaml)
to GitHub.

```yaml
resources:
  repositories:
    - repository: r-azure-pipelines
      type: github
      name: r-lib/r-azure-pipelines
      endpoint: REPLACE-ME

jobs:
  - template: azure-tidyverse.yml@r-azure-pipelines
```

## Status [![Lifecycle: superseded](https://img.shields.io/badge/lifecycle-superseded-orange.svg)](https://www.tidyverse.org/lifecycle/#superseded)

r-azure-pipelines is superseded: this means it is no longer being actively supported. We recommend using [r-lib/actions](https://github.com/r-lib/actions) instead.
