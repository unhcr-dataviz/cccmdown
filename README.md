
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cccmdown

<!-- badges: start -->

[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![R-CMD-check](https://github.com/unhcr-dataviz/cccmdown/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/unhcr-dataviz/cccmdown/actions/workflows/R-CMD-check.yaml)
[![CRAN
status](https://www.r-pkg.org/badges/version/unhcrthemes)](https://CRAN.R-project.org/package=unhcrthemes)
<!-- badges: end -->

The goal of `{cccmdown}` is to ease and speed up the creation of reports
following the [CCCM brand
identity](https://www.cccmcluster.org/branding-collection).

## Installation

Get started by installing the `{cccmdown}` package from GitHub using the
`{pak}` library:

``` r
# If pak is not yet installed, uncomment the following line:
# install.packages("pak")

pak::pkg_install("unhcr-dataviz/cccmdown")
```

## Usage

## Usage

The `{cccmdown::paged_report}` template is designed for R Markdown
projects, simply put the following code in your R Markdown header. For
example:

``` yaml
---
title: "CCCM report"
date: "20 September 2023"
output:
  cccmdown::paged_report:
    coord_mec: "cluster"
    country: "Country name"
---
```

You can also open a `{cccmdown::paged_report}` template using
**RStudio**:

1.  Click the “File” menu then “New File” and choose “R Markdown”.
2.  In the “From Template” tab, choose the **CCCM Paged** built-in
    template.

## Acknowledgements

We extend our gratitude to the creators of the
[`{pagedown}`](https://github.com/rstudio/pagedown) package that
influenced the development of `{cccmdown}`.

## Contribution

Contributions to `{cccmdown}` are highly valued. If you have
suggestions, uncover bugs, or envision new features, kindly submit an
[issue on GitHub](https://github.com/unhcr-dataviz/cccmdown/issues). To
contribute code, don’t hesitate to fork the repository and create a pull
request.

## License

This package is distributed under the [MIT
License](https://github.com/unhcr-dataviz/cccmdown/blob/master/LICENSE.md).
