[![Build Status](https://dev.azure.com/jamesfhester/azuretest/_apis/build/status/jimhester.azuretest?branchName=master)](https://dev.azure.com/jamesfhester/azuretest/\_build/latest?definitionId=2&branchName=master)

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
