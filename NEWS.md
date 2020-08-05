# SSACHR 0.4.2, 2020-08-05
* Updated `README.Rmd` and `README.md`:
    * Updated installation code to pull from the GitHub main branch (because 
      install_github() defaults to looking for branch called master, but we 
      renamed it to main). 
    * Added information about folder structure.
    * Updated the task list. 
* Added the file `inst/extdata/Read_This_Note.txt` to ensure that the 
  `inst/extdata` subfolder will exist in any repospitory ZIP files downloaded 
  from GitHub. 

# SSACHR 0.4.1, 2020-08-04
* Updated `inst/Step_01_Data_mgt.Rmd` to:
    * Switch more code to tidyverse style.
    * Replace scoped verbs like summarize_at() with newer approach based on 
      across(), such as summarize(across()). 
    * Simplify method for merging extrta variables onto IDNEW.
    * Fix a data selection problem that led to failing a cross-check on incident
      count variables. 
    * Rename some code chunks. 
* Updated `README.Rmd` and `README.md` task list. 

# SSACHR 0.4.0, 2020-07-23
* Renamed default Git branch from master to main using instructions at 
  https://stevenmortimer.com/5-steps-to-change-github-default-branch-from-master-to-main/

# SSACHR 0.3.14, 2020-07-20
* Updated `inst/Step_01_Data_mgt.Rmd` to:
    * Switched source used to merge testing window variables onto INC data. 
    * Add an extra variable to IDNEW. 
    * Added more output tables and improved table captions. 
    * Fix typos in explanatory text. 
    * Add sections for merging testing window variables onto CHG and JUD data. 
    * Move and improve code for merging NCON variable onto IDN data. 

# SSACHR 0.3.13, 2020-07-10
* Updated `README.Rmd` and `README.md` heading structure and task list. 
* Updated `inst/Step_01_Data_mgt.Rmd` to:
    * Update heading structure. 
    * Change order of loading and citing R packages. 
    * Make code chunks & R text output use smaller font size by adding a custom 
      chunk hook/option called cfsize.
    * Improve formatting consistency for variable and tibble names in 
      explanatory text.
    * Add and improve explanatory text. 
    * Merge testing window variables onto ARR data. 
    * Improve comments in some code chunks. 

# SSACHR 0.3.12, 2020-06-23
* Updated `inst/Step_01_Data_mgt.Rmd` to:
    * Change headings to improve organization and clarity.
    * Rename chunks and selected variables.
    * Simplify code and improve comments. 
    * Merge testing window variables onto INC and ARR data.

# SSACHR 0.3.11, 2020-06-16
* Updated `inst/Step_01_Data_mgt.Rmd` to:
    * Improve explantory text and comments in code chunks. 
    * Add new tables.
    * Add new IWhen variable. 
    * Improve and rename objects for table captions and footnotes. 

# SSACHR 0.3.10, 2020-06-05
* Updated `inst/Step_01_Data_mgt.Rmd` to:
    * Improve code for computing WDate and related variables. 
    * Document case selection criteria for offenders with known WDate.
    * Add a clean, formatted table. 
    * Start the section for merging WDate onto INC data. 
    * Add and improve explanatory text. 
* `inst/Step_01_Data_mgt.Rmd` is still in draft status, with much left to do.
* Updated task list in `README.Rmd`. 
    
# SSACHR 0.3.9, 2020-06-02
* Updated `inst/Step_01_Data_mgt.Rmd` to improve some explanatory text,
  create and examine WDate variable.

# SSACHR 0.3.8, 2020-05-31
* Updated `inst/Step_01_Data_mgt.Rmd` to improve some explanatory text.

# SSACHR 0.3.7, 2020-05-26
* Committed some changes actually made on 2020-05-22. 
* Updated `inst/Step_01_Data_mgt.Rmd` to improve some explanatory text.
  
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
