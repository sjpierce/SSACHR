
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SSACHR: Serial Sexual Assault Study Criminal History Records Paper

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/cstatops)](https://CRAN.R-project.org/package=SSAlvmm)
<!-- badges: end -->

This package and corresponding GitHub repository are intended to enhance
the reproducibility of a research paper. The principal investigator for
the study is Dr. Rebecca Campbell (Professor, Department of Psychology,
Michigan State University). The paper will present descriptive data
about the criminal histories of suspected serial sexual offenders using
data from both criminal history records and forensic DNA testing of
sexual assault kits (SAKs).

## Installation

The *SSACHR* package is only available from a *private* repository
available on [GitHub](https://github.com/) at
<https://github.com/sjpierce/SSACHR>. It will remain private until we
are ready to release the code, which will likely coincide with
publication of the associated paper. After that, we will make it a
public repository.

### Install SSACHR with Pre-Requisite Packages

Parts of the *SSACHR* package rely on functions from the *piercer*
package, which is not yet available from
[CRAN](https://CRAN.R-project.org). Releasing *piercer* on CRAN is a
long-term goal but the development version can be obtained from a public
[GitHub](https://github.com/) repository at
<https://github.com/sjpierce/piercer>. The following code will install
*devtools*, *piercer*, and *SSACHR*. We use the *install\_github()*
function from *devtools* to install the other two packages directly from
the Github repositories.

``` r
install.packages("devtools")
devtools::install_github("sjpierce/piercer")
devtools::install_github("sjpierce/SSACHR")
```

## Obtaining Data Files

The data files required by this package were deposited into the National
Archive of Criminal Justice Data (Campbell, 2019). Please visit the web
page for that deposit at [NACJD](https://doi.org/10.3886/ICPSR37134.v1)
to download the files.

After you have downladed the data from NACJD, unzip all the SPSS data
files (\*.sav) into the data subfolder associated with your local copy
of this repository. That should allow you to reproduce the analyses by
re-running our scripts.

## Example

Text goes here.

``` r
#library(SSAlvmm)
# Need to add example code
```

# References

Campbell, R. (2019). Serial sexual assaults: A longitudinal examination
of offending patterns using DNA evidence, Detroit, Michigan, 2009 \[Data
files, codebooks, computer programs, and statistical output\].
ICPSR37134-v1. Ann Arbor, MI: Inter-university Consortium for Political
and Social Research \[distributor\], 2019-02-28. Retrieved from:
<https://doi.org/10.3886/ICPSR37134.v1>

# Funding Support

This R package and repository are based on research supported by the
following grant.

Campbell, R., Pierce, S. J., & Sharma, D. (01/01/2015–12/31/2018).
Serial sexual assaults: A longitudinal examination of offending patterns
using DNA evidence. \[NIJ Award \# 2014-NE-BX-0006, Awarded, $699,533\].
Sponsor: National Institute of Justice. Location: Michigan State
University, East Lansing, MI.

# Disclaimer

This research was supported by a grant from the National Institute of
Justice, United States (2014-NE-BX-0006). The opinions or points of view
expressed in this documents (or any other document included in this R
package and repository) are solely those of the authors and do not
reflect the official positions of any participating organization or the
U.S. Department of Justice.

## Task List

  - Improve this file.
  - Create a script to generate a data flow diagram.
