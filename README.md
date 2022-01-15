
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SSACHR: Serial Sexual Assault Study Criminal History Records Paper Research Compendium

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![Project Status:
Inactive](https://www.repostatus.org/badges/latest/inactive.svg)](https://www.repostatus.org/#inactive)
[![CRAN
status](https://www.r-pkg.org/badges/version/SSACHR)](https://CRAN.R-project.org/package=SSACHR)
<!-- badges: end -->

This package and corresponding GitHub repository are intended to enhance
the reproducibility of a research paper (Campbell, Pierce,
Goodman-Williams, & Feeney, 2021) by serving as a research compendium
(Marwick, Boettiger, & Mullen, 2018). The principal investigator for the
study is Dr. Rebecca Campbell (Professor, Department of Psychology,
Michigan State University). The paper presents descriptive data about
the criminal histories of suspected serial sexual offenders using data
from both criminal history records and forensic DNA testing of sexual
assault kits (SAKs).

## Installation

The *SSACHR* package is available from a public repository available on
[GitHub](https://github.com/) at <https://github.com/sjpierce/SSACHR>.
It was made public after the manuscript was accepted for publication.

### Order of Installation Tasks

Before installing *SSACHR*, make sure you have:

-   Installed R 4.1.2 or later. You can get the most recent version of R
    from the [Comprehensive R Archive Network
    (CRAN)](https://cran.r-project.org/).
-   Installed any tools required for compiling packages (they will be
    specific to your operating system). These will be necessary for the
    *devtools* package to work. You may find Bryan & Hester’s (n.d.)
    website useful, especially the [Set up an R dev
    environment](https://rstats.wtf/set-up-an-r-dev-environment.html)
    section.
    -   On Windows, see
        <https://cran.r-project.org/bin/windows/Rtools/>.
    -   On Mac OS X, see <https://cran.r-project.org/bin/macosx/tools>
        and <https://mac.R-project.org/tools/>.
-   Installed the [*devtools*](https://devtools.r-lib.org/) package
    for R. The most recent [CRAN
    release](https://cran.r-project.org/package=devtools) will likely be
    more stable but sometimes you may instead need the [development
    version at GitHub](https://github.com/r-lib/devtools).
-   Updated your R packages. You may be prompted with a dialog box
    asking “Do you want to install from sources the packages which need
    compilation?” It usually works fine if I choose “no”. Occasionally,
    it appears necessary to choose “yes”, but I am more likely to run
    into problems when doing that.  
-   Obtain the *SSACHR* repository from GitHub and review its contents.
-   Install the *SSACHR* package to your R package library.
-   Install additional R packages from CRAN.
-   After installing *SSACHR*, see the Obtaining Data Files section
    below. You will need to download the data from an archive and put
    them in the right subfolder on your computer.

### Obtain the Repository from GitHub

If you use Git (Torvalds et al., 2022) and have a GitHub account, either
clone or fork and clone the package to your computer using the usual Git
commands (Bryan, 2018; Bryan et al., 2019, Chapters 28 and 32).
Otherwise, manually download a ZIP file and unzip its contents to a
folder. Either way, the files should end up in a folder called `SSACHR`
on your computer. That folder is your local copy of the repository.

Note that the package code uses relative rather than absolute folder
path and file name references. Moving or renaming subfolders and/or
files may cause problems. We have tested it only with the folder
structure and file naming used in the primary repository on GitHub.

### Understanding the Repository Structure and Contents

The structure for the package is shown in the outline below, where
folder names and file names are `highlighted like this` and comments are
in normal text. The folder structure is largely determined by the
conventions governing the structure of R packages. It deviates a bit
from the example research compendium folder structures discussed by
Marwick et al. (2018). The repository is also set up as an [RStudio
project](https://support.rstudio.com/hc/en-us/articles/200526207-Using-RStudio-Projects).

-   `SSACHR`: This is the root folder for the repository.
    -   `data`: This folder is where the data file produced by the
        script `Step_01_Data_Mgt.Rmd` will be stored. This is a standard
        folder for R package structures.
        -   `CHR_Data.RData` is the data file produced by the script
            `Step_01_Data_Mgt.Rmd` after it imports the external data
            files. It is not distributed with the repository (see the
            Obtaining Data Files section).
        -   `Read_This_Nate.text` This text file is just present to
            ensure that the `data` subfolder will be created when you
            clone the repository or extract files from ZIP file copy of
            the repository obtained from GitHub.
    -   `inst`: This folder is where you can find the key files you will
        need to use if you want to re-run our analyses on your own
        computer. The unintuitive name for this folder is a result of R
        package building conventions (it is where you put files that
        should be installed with the package).
        -   `extdata`: This subfolder is where you will need to put the
            SPSS data files mentioned in the Obtaining Data Files
            section below.
            -   `Read_This_Note.txt`: This text file is just present to
                remind you  
                that the `extdata` subfolder is where you should put the
                SPSS data files after you get them.
            -   `TWindow_Scenarios.csv`: This file contains hypothetical
                data used by `Step_01_Data_Mgt.Rmd` to generate a
                figure.
        -   `compact-title.tex`: This LaTeX file is used when you knit
            `.Rmd` files into PDF files. It helps control title section
            formatting.
        -   `Development_Tools.R`: This file just contains R code
            reminders that I use while developing packages.
        -   `Step_01_Data_Mgt.pdf`: This is the default output filename
            produced by knitting `Step_01_Data_Mgt.Rmd`. It is not
            distributed with the package because you would just generate
            it on your own computer to check reproducibility.
        -   `Step_01_Data_Mgt_Published.pdf`: This is a copy of the
            final output I produced on my computer when preparing to
            release the package to the public. We relied on it to create
            our manuscript. It is distributed with the package because
            you may want to compare it to the results you get on your
            own computer by knitting `Step_01_Data_Mgt.Rmd`.
        -   `Step_01_Data_Mgt.Rmd`: Knitting this file requires that you
            have already obtained the data files mentioned in the
            Obtaining Data Files section below. It performs initial data
            management steps to prepare the data for use in other
            scripts.
        -   `Step_02_Analysis.pdf`: This is the default output filename
            produced by knitting `Step_02_Analysis.Rmd`. It is not
            distributed with the package because you would just generate
            it on your own computer to check reproducibility.
        -   `Step_02_Analysis_Published.pdf`: This is a copy of the
            final output I produced on my computer when preparing to
            release the package to the public. We relied on it to create
            our manuscript. It is distributed with the package because
            you may want to compare it to the results you get on your
            own computer by knitting `Step_02_Analysis.Rmd`.
        -   `Step_02_Analysis.Rmd`: This file should be knitted after
            you knit `Step_01_Data_Mgt.Rmd` because it depends on a data
            files created by that script. It will produce a PDF file
            called `Step_02_Analysis.pdf`.
        -   `R_Citations.pdf`: This is the default output filename
            produced by knitting `R_Citations.Rmd`. It is not
            distributed with the package because you would just generate
            it on your own computer to check reproducibility.
        -   `R_Citations_Published.pdf`: This is a copy of the final
            output I produced on my computer when preparing to release
            the package to the public. It describes the software
            environment I used to generate the files upon which our
            published manuscript was based. You can compare it to the
            environment on your computer. Maximum reproducibility should
            occur when you are using the environment described in this
            document.
        -   `R_Citations.Rmd`: This file generates details about the R
            packages used by `Step_01_Data_Mgt.Rmd` and
            `Step_02_Analysis.Rmd`. I recommend knitting it after you
            knit those two files. When you knit it, you will get an
            output file called `R_Citations.pdf` showing the citations
            and versions for what is installed and in use on your
            computer.
    -   `man`: This folder contains R help files (`*.Rd`) for the
        package and its custom functions. It is required by R package
        building conventions.
    -   `R`: This folder contains the source code for the package’s
        custom functions in a set of `*.R` script files. It is required
        by R package building conventions.
    -   `.gitignore`: This file tells Git what files to ignore and omit
        from synchronizing with the main repository on GitHub.
    -   `.Rbuildignore`: This file tells R what files to ignore when
        building the package from the source code.
    -   `DESCRIPTION`: This file is a brief, structured description of
        the package that is required by R package building conventions.
    -   `LICENSE.md`: This file contains the terms of the GPL3 software
        license that apply to the source code in this repository.
    -   `LICENSE.txt`: This file contains the terms of the CC-BY-SA-4.0
        license that applies to all non-source code content in this
        repository.
    -   `NAMESPACE`: This file is created automatically by R when
        building the package. You should not edit it manually. It is
        required by R package building conventions.
    -   `NEWS.md`: This file contains an list of comments about the
        changes made with each version of this package. It is required
        by R package building conventions
    -   `README.md`: This file is obtained by knitting the `README.Rmd`
        file and is used by GitHub to display information about the
        package. Do not edit it manually. In R Studio, you can read the
        formatted version by opening the file and clicking the Preview
        button.
    -   `README.Rmd`: This file gives an introduction to the package.
        Knitting it produces the `README.md` file and opens the preview
        automatically.
    -   `SSACHR.Rproj`: This is an RStudio project file. It contains
        some settings for working with the project in that software.

### Install SSACHR to Your R Package Library

Parts of the *SSACHR* package rely on custom functions defined in the
package repository’s `SSACHR/R` subfolder. The easiest way to use them
is to install the package to your personal R package library.
Downloading or cloning the repository files to your computer does not
install that package into your R package library. It just creates your
local copy of the repository files.

To install the package to your R package library, you have to either
build and install the package from those local files, or install it
directly from GitHub.

The following code will install *SSACHR* directly from the Github
repository into your personal package library by using the
`install_github()` function from *devtools*.

``` r
devtools::install_github("sjpierce/SSACHR", ref = "main")
```

### Install Additional R Packages from CRAN

Scripts in this R package depend on having a number of other R packages
installed. Those packages are available from CRAN and can be installed
by running the following code in the R console.

``` r
install.packages(pkgs = c("assertthat", "car", "descr", "dplyr", "emmeans", 
                          "geepack", "git2r", "ggdist", "ggplot2", "haven", 
                          "here", "kableExtra", "knitr", "lattice", 
                          "latticeExtra", "lubridate", "plyr", "psych", 
                          "rmarkdown", "RColorBrewer", "sjlabelled", "texreg",
                          "tinytex", "tidyr", "utils", "vistime", "xfun"))
```

## Obtaining Data Files

The data files required by this package were deposited into the National
Archive of Criminal Justice Data (Campbell, 2019). Please visit the web
page for that [deposit at NACJD](https://doi.org/10.3886/ICPSR37134.v1)
to download the files.

After you have downladed the data from NACJD, unzip all the SPSS data
files (`*.sav`) into the `SSACHR/inst/extdata` subfolder of your local
repository. That should allow you to reproduce the analyses by
re-running our scripts.

Once you have completed this step and all the others listed above, you
should be ready to use this package to reproduce our results.

## Loading the *SSACHR* Package in R

After it has been installed to your package library as described above,
you can load *SSACHR* via the following R console command. That provides
access to the custom R functions we have included in the package.

``` r
library(SSACHR)
```

## Get Help on *SSACHR’s* Custom Functions

You can see information about the package by using the following command
in the R console. The resulting help page has an Index link at the
bottom that will show you a list of all the custom functions in the
package.

``` r
?SSACHR
```

## Reproduce Our Results

If you are using [RStudio
Desktop](https://www.rstudio.com/products/rstudio/), the easiest way to
start reproducing our results is to navigate to the `SSACHR` folder
containing the repository and open the project file
`SSACHR\SSACHR.Rproj`.

Then you can open and knit the key scripts in the following order:

-   `SSACHR/inst/Step_01_Data_Mgt.Rmd`
-   `SSACHR/inst/Step_02_Analysis.Rmd`
-   `SSACHR/inst/R_Citations.Rmd`

To do that from the R console, the following code should work. Each
`Rscript_call()` runs the listed input script in a fresh R session and
writes a PDF output file to the specified name and folder inside the
local repository. That will replace any prior version of the output by
overwriting the file.

``` r
library(xfun)      # for Rscript_call()
library(here)      # for here()
library(rmarkdown) # for render()
Rscript_call(fun = render,
             args = list(input = here("inst/Step_01_Data_Mgt.Rmd"),
                         params = list(LogFile = "Step_01_Data_Mgt.pdf"),
                         output_file = "Step_01_Data_Mgt.pdf",
                         output_dir = here("inst")))
Rscript_call(fun = render,
             args = list(input = here("inst/Step_02_Analysis.Rmd"),
                         params = list(LogFile = "Step_02_Analysis.pdf"),
                         output_file = "Step_02_Analysis.pdf",
                         output_dir = here("inst")))
Rscript_call(fun = render,
             args = list(input = here("inst/R_Citations.Rmd"),
                         params = list(LogFile = "R_Citations.pdf"),
                         output_file = "R_Citations.pdf",
                         output_dir = here("inst")))
```

## Software Information

We use R Markdown to enhance reproducibility because it provides
excellent support for generating dynamic reports (Mair, 2016). Knitting
the source R Markdown script *README.Rmd* generates this Markdown file.
Knitting our other R Markdown scripts from this package generates PDF
output files containing explanatory text, R code, plus R output (both
text and graphics).

-   We use [RStudio](www.rstudio.org) 2021.9.1.372 or later to work with
    R and R markdown files. The software chain looks like this: **Rmd
    file > RStudio > R > rmarkdown > knitr > md file > pandoc > tex
    file > TinyTeX > PDF file**.
-   We use [pandoc](https://pandoc.org) 2.14.0.3 or later for this
    document. A version of pandoc comes bundled with RStudio, but if you
    want the most recent version, download it from
    <https://pandoc.org/>.
-   We recommend using [TinyTeX](https://yihui.org/tinytex/) to compile
    LaTeX files produced by pandoc into PDF files. However, it may be
    viable to use [MiKTeX](https://miktex.org) or some other LaTeX
    distribution instead.

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

Campbell, R., Pierce, S. J., Goodman-Williams, R., & Feeney, H. (2022).
A window of opportunity: Examining the potential impact of mandatory
sexual assault kit (SAK) testing legislation on crime prevention
\[Manuscript accepted for publication\]. *Psychology, Public Policy, and
Law*.

Mair, P. (2016). Thou shalt be reproducible! A technology perspective.
*Frontiers in Psychology, 7*(1079), 1-17.
[doi:10.3389/fpsyg.2016.01079](http://dx.doi.org/10.3389/fpsyg.2016.01079)

Marwick, B., Boettiger, C., & Mullen, L. (2018). Packaging data
analytical work reproducibly using R (and friends). *The American
Statistician, 72*(1), 80-88.
[doi:10.1080/00031305.2017.1375986](https://doi.org/10.1080/00031305.2017.1375986)

Torvalds, L., Hamano, J. C., & other contributors to the Git Project.
(2022). Git for Windows (Version 2.34.1) \[Computer program\]. Brooklyn,
NY: Software Freedom Conservancy. Retrieved from <https://git-scm.com>

## Funding Support

This R package and repository are based on research supported by the
following grant.

Campbell, R., Pierce, S. J., & Sharma, D. (2015–2018). *Serial sexual
assaults: A longitudinal examination of offending patterns using DNA
evidence*. (NIJ Award # 2014-NE-BX-0006) \[Grant\]. National Institute
of Justice.

## Disclaimer

This research was supported by a grant from the National Institute of
Justice, United States (2014-NE-BX-0006). The opinions or points of view
expressed in this document (or any other document included in this R
package and repository) are solely those of the authors and do not
reflect the official positions of any participating organization or the
U.S. Department of Justice.
