# SSACHR 0.3.6, 2020-05-22
* Updated `inst/Step_01_Data_mgt.Rmd` to improve SPD import and work on 
  identifying earliest SAK for each offender.
  
# SSACHR 0.3.5, 2020-05-12
* Updated `inst/Step_01_Data_mgt.Rmd` to improve SPD import and create SPDE 
  dataset.

# SSACHR 0.3.4, 2020-05-12
* Updated `inst/Step_01_Data_mgt.Rmd` as follows.
    * Fixed computation of NCON variable.
    * Updated heading structure and moved some code to different sections.
    * Removed import code for data files we will not need.
    * Deleted code for creating variables we will not be using. 
    * Added code 

# SSACHR 0.3.3, 2020-05-10
* Updated `inst/Step_01_Data_mgt.Rmd` as follows.
    * Updated more code to use tidyverse-style piped operations (still have more 
      to do).  

# SSACHR 0.3.2, 2020-05-08
* Updated task list in `README.Rmd` and `README.md`.
* Updated dfsummary() function in `R/Data_Mgt_Functions.R` to eliminate warning 
  message when used with a data frame that does not contain an IID variable.
* Updated `inst/Step_01_Data_mgt.Rmd` as follows.
    * Added a chunk label. 
    * Fixed some data import code. 
    * Updated some code to use tidyverse-style piped operations (still have more 
      to do).

# SSACHR 0.3.1, 2020-05-07
* Updated `inst/Step_01_Data_mgt.Rmd` as follows.
    * Remove chunk for installing `piercer` package and associated text. 
    * Use here:here() to access files. 
    * Switch to use tidyverse style for data import code. 
    * Make code more readable. 

# SSACHR 0.3.0, 2020-05-05
* Updated `README.Rmd` and `README.md` extensively.
* Update `.gitignore` to ignore SPSS data files in `inst/extdata` subfolder. 
* Added dcode() and rvlabel() to `R/Data_Mgt_Functions.R`.
* Updated help files for dcode() and rvlabel().
* Updated `inst/Step_01_Data_mgt.Rmd` by copying in code from previous script 
  `CHR_Summary_Step01_2017-01.19.Rmd`, which predated the switch to a package 
  format. Much more work remains to finish that script (and it may get renamed
  later). 

# SSACHR 0.2.1, 2020-04-30
* Updated `DESCRIPTION` file by appending "Research Comependium" to package 
  title. 

# SSACHR 0.2.0, 2020-04-30
* Added `R/Lattice_Functions.R` with panel.mybox() and panel.mydensity()
  functions and corresponding help.
* Added `R/Data_Mgt_Functions.R` with dfsummary() functions and corresponding 
  help.

# SSACHR 0.1.0, 2020-04-23
* Added `inst/Step_01_Data_mgt.Rmd` script. It is an early draft and will be 
  revised further. 

# SSACHR 0.0.0.9001, 2020-04-20
* Created the GitHub repository to store this package. 
* Added `.gitignore` file.
* Added `.Rbuildignore` file.
* Added `DESCRIPTION` file. 
* Added `NAMESPACE` file. 
* Added `NEWS.md` file. 
* Added `README.Rmd` file and updated `README.md` file. 
* Updated `SSACHR.proj` file.
* Added `inst` subfolder.
* Added `inst/Development_Tools.R` file. 
* Added `man` subfolder.
* Added `man/SSACHR-package.Rd` file. 
* Added `R` subfolder.
* Added `R/SSACHR-package.R` file for package-level documentation.
