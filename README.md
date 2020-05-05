
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SSACHR: Serial Sexual Assault Study Criminal History Records Paper Research Compendium

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/cstatops)](https://CRAN.R-project.org/package=SSAlvmm)
<!-- badges: end -->

This package and corresponding GitHub repository are intended to enhance
the reproducibility of a research paper (**ADD CITATION\!**) by serving
as a research compendium (Marwick, Boettiger, & Mullen, 2018). The
principal investigator for the study is Dr. Rebecca Campbell (Professor,
Department of Psychology, Michigan State University). The paper will
present descriptive data about the criminal histories of suspected
serial sexual offenders using data from both criminal history records
and forensic DNA testing of sexual assault kits (SAKs).

## Installation

### Repository Location

The *SSACHR* package is only available from a *private* repository
available on [GitHub](https://github.com/) at
<https://github.com/sjpierce/SSACHR>. It will remain private until we
are ready to release the code, which will likely coincide with
publication of the associated paper. After that, we will make it a
public repository.

If you use Git (Torvalds et al., 2020) and have a GitHub account, just
clone the package to your computer using the usual Git commands.
Otherwise, manually download a ZIP file and unzip its contents to a
folder. Either way, the files should end up in a folder called *SSACHR*
on your computer. That folder is then your local copy of the repository.

Note that the package code uses relative rather than absolute folder
path and file name references. Moving or renaming subfolders and/or
files may cause problems. We have tested it only with the folder
structure and file naming used in the primary repository on GitHub.

### Install SSACHR to Your R Package Library

Parts of the *SSACHR* package rely on custom functions defined in the
package repository’s *SSACHR/R* subfolder. The easiest way to use them
is to install the package to your personal R package library.
Downloading or cloning the repository files to your computer does not
install that package into your R package library. It just creates your
local copy of the repository files.

To install the package to your R package library, you have to either
build and install the package from those local files, or install it
directly from GitHub.

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
page for that [deposit at NACJD](https://doi.org/10.3886/ICPSR37134.v1)
to download the files.

After you have downladed the data from NACJD, unzip all the SPSS data
files (\*.sav) into the *SSACHR/inst/extdata* subfolder of your local
repository. That should allow you to reproduce the analyses by
re-running our scripts.

## Example

Text goes here.

``` r
#library(SSAlvmm)
# Need to add example code
```

# References

Campbell, R. (2019). *Serial sexual assaults: A longitudinal examination
of offending patterns using DNA evidence, Detroit, Michigan, 2009*
\[Data files, codebooks, computer programs, and statistical output\].
ICPSR37134-v1. Ann Arbor, MI: Inter-university Consortium for Political
and Social Research \[distributor\], 2019-02-28. Retrieved from:
<https://doi.org/10.3886/ICPSR37134.v1>

Marwick, B., Boettiger, C., & Mullen, L. (2018). Packaging data
analytical work reproducibly using R (and friends). *The American
Statistician, 72*(1), 80-88.
[doi:10.1080/00031305.2017.1375986](https://doi.org/10.1080/00031305.2017.1375986)

Torvalds, L., Hamano, J. C., & other contributors to the Git Project.
(2020). Git for Windows (Version 2.26.2) \[Computer program\]. Brooklyn,
NY: Software Freedom Conservancy. Retrieved from <https://git-scm.com>

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
expressed in this document (or any other document included in this R
package and repository) are solely those of the authors and do not
reflect the official positions of any participating organization or the
U.S. Department of Justice.

# Task List

  - Improve this file.
  - Create a script to generate a data flow diagram.
