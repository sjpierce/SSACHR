
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SSACHR: Serial Sexual Assault Study Criminal History Records Paper Research Compendium

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![CRAN
status](https://www.r-pkg.org/badges/version/SSACHR)](https://CRAN.R-project.org/package=SSACHR)
<!-- badges: end -->

This package and corresponding GitHub repository are intended to enhance
the reproducibility of a research paper (Campbell, Pierce,
Goodman-Williams, & Feeney, 2021) by serving as a research compendium
(Marwick, Boettiger, & Mullen, 2018). The principal investigator for the
study is Dr. Rebecca Campbell (Professor, Department of Psychology,
Michigan State University). The paper will present descriptive data
about the criminal histories of suspected serial sexual offenders using
data from both criminal history records and forensic DNA testing of
sexual assault kits (SAKs).

## Installation

### Repository Location

The *SSACHR* package is only available from a *private* repository
available on [GitHub](https://github.com/) at
<https://github.com/sjpierce/SSACHR>. It will remain private until we
are ready to release the code, which will likely coincide with
publication of the associated paper. After that, we will make it a
public repository.

If you use Git (Torvalds et al., 2020) and have a GitHub account, either
clone or fork and clone the package to your computer using the usual Git
commands (Bryan, 2018; Bryan et al., 2019, Chapters 28 and 32).
Otherwise, manually download a ZIP file and unzip its contents to a
folder. Either way, the files should end up in a folder called *SSACHR*
on your computer. That folder is your local copy of the repository.

### Repository Structure

The structure for the package is shown in the outline below, where
folder names are in bold text, file names are in italics, and comments
are in normal text. The folder structure is largely determined by the
conventions governing the structure of R packages. It deviates a bit
from the example research compendium folder structures discussed by
Marwick et al. (2018).

-   **SSACHR**: This is the root folder for the repository.
    -   **inst**: This folder is where you can find the key files you
        will need to use if you want to re-run our analyses on your own
        computer. The unintuitive name for this folder is a result of R
        package building conventions (it is where you put files that
        should be installed with the package).
        -   **extdata**: This subfolder is where you will need to put
            the SPSS data files mentioned in the Obtaining Data Files
            section below.
            -   *Read\_This\_Note.txt*: This text file is just present
                to ensure that the **extdata** subfolder will be created
                when you clone the repository or extract files from ZIP
                file copy of the repository obtained from GitHub.
        -   *compact-title.tex*: This LaTeX file is used when you knit
            .Rmd files  
            into PDF files. It helps control formatting of the title
            section.
        -   *Development\_Tools.R*: This file just contains R code
            reminders that I use while developing the package.
        -   *Step\_01\_Data\_Mgt.Rmd*: Knitting this file requires that
            you have already obtained the data files mentioned in the
            Obtaining Data Files section below. It performs initial data
            management steps to prepare the data for use in other
            scripts.
        -   *Step\_02\_Analysis.Rmd*: This file should be knitted after
            you knit *Step\_01\_Data\_Mgt.Rmd* because it depends on
            files created by that script.
        -   *R\_Citations.Rmd*: This file provides more details about
            the R packages used by *Step\_01\_Data\_Mgt.Rmd* and
            *Step\_02\_Analysis.Rmd*. We recommend knitting it after you
            knit those two files. When you knit it, you will get an
            output file called *R\_Citations.pdf* showing the citations
            and versions for what is installed and in use on your
            computer.
        -   *R\_Citations\_Published.pdf*: This is output from knitting
            *R\_Citations.Rmd* on our computer and represents the
            software environment we used to generate the files upon
            which our published manuscript was based. You can compare it
            to the environment on you computer. Maximum reproducibility
            should occur when you are using the same environment we
            used.
    -   **man**: This folder contains R help files (*.Rd*) for the
        package and  
        its custom functions. It is required by R package building
        conventions.
    -   **R**: This folder contains the source code for the package’s
        custom functions in a set of *.R* script files. It is required
        by R package building conventions
    -   *.gitignore*: This file tells Git what files to ignore and omit
        from synchrnizing with the main repository on GitHub.
    -   *.Rbuildignore*: This file tells R what files to ignore when
        building the package from the source code.
    -   *DESCRIPTION*: This file is a brief, structured description of
        the package that is required by R package building conventions.
    -   *NAMESPACE*: This file is created automatically by R when
        building the package. You should not edit it manually. It is
        required by R package building conventions
    -   *NEWS.md*: This file contains an list of comments about the
        changes made with each version of this package. It is required
        by R package building conventions
    -   *README.md*: This file is obtained by knitting the *README.Rmd*
        file and is used by GitHub to display information about the
        package. Do not edit it manually. In R Studio, you can read the
        formatted version by opening the file and clicking the Preview
        button.
    -   *README.Rmd*: This file gives an introduction to the package.
        Knitting it produces the *README.md* file and opens the preview
        automatically.
    -   *SSACHR.Rproj*: This is an RStudio project file. It contains
        some settings for working with the project in that software.

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

The following code will install *devtools* and *SSACHR*. We use the
*install\_github()* function from *devtools* to install the *SSACHR*
pacakge directly from the Github repository.

``` r
install.packages("devtools")
devtools::install_github("sjpierce/SSACHR", ref = "main")
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
#library(SSACHR)
# Need to add example code
```

## Software Information

We use R Markdown to enhance reproducibility because it provides
excellent support for generating dynamic reports (Mair, 2016). Knitting
the source R Markdown script *README.Rmd* generates this Markdown file.
Knitting our other R Markdown scripts from this package generates PDF
output files containing explanatory text, R code, plus R output (both
text and graphics).

-   We use [RStudio](www.rstudio.org) 1.4.1717 or later to work with R
    and R markdown files. The software chain looks like this: **Rmd
    file &gt; RStudio &gt; R &gt; rmarkdown &gt; knitr &gt; pandoc &gt;
    TinyTeX or MiKTeX &gt; PDF file**.
-   We use [pandoc](https://pandoc.org) 2.11.4 or later for this
    document. A version of pandoc comes bundled with RStudio, but if you
    want the most recent version, download it from
    <https://pandoc.org/>.
-   We recommend using [TinyTeX](https://yihui.org/tinytex/) to compile
    LaTeX files produced by pandoc into PDF files. However, it may be
    viable to use [MiKTeX](https://miktex.org) instead.

## References

Bryan, J. (2018). Excuse me, do you have a moment to talk about version
control? *The American Statistician, 72*(1), 20-27.
[doi:10.1080/00031305.2017.1399928](https://doi.org/10.1080/00031305.2017.1399928)

Bryan, J., The STAT 545 TAs, & Hester, J. (2019). Happy Git and GitHub
for the useR. Retrieved from <https://happygitwithr.com>

Campbell, R. (2019). *Serial sexual assaults: A longitudinal examination
of offending patterns using DNA evidence, Detroit, Michigan, 2009*
\[Data files, codebooks, computer programs, and statistical output\].
ICPSR37134-v1. Ann Arbor, MI: Inter-university Consortium for Political
and Social Research \[distributor\], 2019-02-28. Retrieved from:
<https://doi.org/10.3886/ICPSR37134.v1>

Campbell, R., Pierce, S. J., Goodman-Williams, R., & Feeney, H. (2021).
*A window of opportunity: Examining the potential impact of mandatory
sexual assault kit (SAK) testing legislation on crime prevention*
\[Manuscript under revision\]. Department of Psychology, Michigan State
University.

Mair, P. (2016). Thou shalt be reproducible! A technology perspective.
*Frontiers in Psychology, 7*(1079), 1-17.
[doi:10.3389/fpsyg.2016.01079](http://dx.doi.org/10.3389/fpsyg.2016.01079)

Marwick, B., Boettiger, C., & Mullen, L. (2018). Packaging data
analytical work reproducibly using R (and friends). *The American
Statistician, 72*(1), 80-88.
[doi:10.1080/00031305.2017.1375986](https://doi.org/10.1080/00031305.2017.1375986)

Torvalds, L., Hamano, J. C., & other contributors to the Git Project.
(2020). Git for Windows (Version 2.26.2) \[Computer program\]. Brooklyn,
NY: Software Freedom Conservancy. Retrieved from <https://git-scm.com>

## Funding Support

This R package and repository are based on research supported by the
following grant.

Campbell, R., Pierce, S. J., & Sharma, D. (01/01/2015–12/31/2018).
Serial sexual assaults: A longitudinal examination of offending patterns
using DNA evidence. \[NIJ Award \# 2014-NE-BX-0006, Awarded, $699,533\].
Sponsor: National Institute of Justice. Location: Michigan State
University, East Lansing, MI.

## Disclaimer

This research was supported by a grant from the National Institute of
Justice, United States (2014-NE-BX-0006). The opinions or points of view
expressed in this document (or any other document included in this R
package and repository) are solely those of the authors and do not
reflect the official positions of any participating organization or the
U.S. Department of Justice.

## Task List

-   Create a script to generate a data flow diagram.
-   Create a make-file script to sequence running multiple .Rmd files.
