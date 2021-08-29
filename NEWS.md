# SSACHR 0.19.1, 2021-08-29
* Update `inst/Step_02_Analysis.Rmd` to:
    * Change number of decimals shown for percentages in selected tables. 

# SSACHR 0.19.1, 2021-08-20 to 2021-08-23
* Update `inst/Step_02_Analysis.Rmd` to:
    * Add a new table and explanatory text in the Years to Incident Date 
      section. 
    * Improve table formatting in the Years to Incident Date section. 
    * Improve code comments in the Years to Incident Date section. 

# SSACHR 0.19.0, 2021-08-17
* Updated `README.Rmd` and `README.md` to:
    * Update the task list.
    * Add citation for the manuscript to the reference list.
    * Format grant citation to meet APA 7th edition style requirements. 
* Updated `inst/Step_01_Data_Mgt.Rmd` to create and save IDNEWB and IDNEWD 
  tibbles. 
* Update `inst/Step_02_Analysis.Rmd` to:
    * Display sample sizes by period at start of Offender-Level Summaries 
      section.
    * Format some sample sizes reported in the text. 
    * Added a new graph and explanatory text to the After Period Summary. 
    * Improved a table footnote.
    * Added the Before Period Summary section.
    * Added the During Period Summary section.
    * Stop exporting figures related to broader crime categories. 

# SSACHR 0.18.1, 2021-08-15
* Updated `inst/Step_01_Data_Mgt.Rmd` to load another package. 
* Update `inst/Step_02_Analysis.Rmd` to:
    * Remove transparency from figures to be exported (per journal requirements)
      by eliminating alpha parameters.
    * Adjust size of boxplots in raincloud plots. 
    * Export only EPS files for figures. 
    * Fix a couple inaccurate code comments. 
    * Moved figure export code and added \FloatBarrier commands. 
    * Export additional figures. 
    * Renamed some objects for clarity. 
    * Simplify path name for loading data. 
    * Added some blank lines to improve readability. 
    * Load an additional package. 
* Updated `inst/R_Citations.Rmd` to cite more packages. 

# SSACHR 0.18.0, 2021-08-12
* Update `.gitignore` to ignore EPS and TIFF files in `inst`. 
* Update `.Rbuildignore` to ignore EPS, PDF, and TIFF files in `inst`. 
* Updated `inst/Step_01_Data_Mgt.Rmd` to create and save out the INCEWA tibble. 
* Update `inst/Step_02_Analysis.Rmd` to:
    * Add a figure for IYearsAfterTW by crime category.
    * Change figure sizes to match journal requirements. 
    * Export selected figures to EPS and TIFF files. 
    * Improve some figure captions. 
    * Fix inaccurate code comments.
    * Add new table summarizing years to incident date by crime category.
    * Add figure for IYearsAfterTW by crime category and improve similar one 
      by broader crime category.

# SSACHR 0.17.2, 2021-08-06
* Updated `inst/Step_01_Data_Mgt.Rmd` to add IYearsAfterTW variable to INCEW. 
* Update `inst/Step_02_Analysis.Rmd` to add a figure for IYearsAfterTW by 
  broader crime category. 

# SSACHR 0.17.1, 2021-08-02
* Update `inst/Step_02_Analysis.Rmd` to:
    * Improve table formatting in After Period Summary section. 

# SSACHR 0.17.0, 2021-07-31 to 2021-08-02
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Add new variables to IDNEWA tibble.
    * Add variable labels to the IDNEWA tibble.
    * Sort the IDNEWA tibble. 
* Update `inst/Step_02_Analysis.Rmd` to:
    * Add incident count summaries for broader crime categories.
    * Add plots of incident count variable distributions during the after 
      period. 
* Deleted `inst/Temp_Code.R` because the draft code has been edited and inserted
  in other files now. 

# SSACHR 0.16.1, 2021-07-30
* Update `inst/Step_02_Analysis.Rmd` to improve after period summary table. 

# SSACHR 0.16.0, 2021-07-26
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Add variables related to four broader crime categories (sexual, violent, 
      property, and other), along with explantory text about them.
    * Fix a table that listed variable names (it needed to include those new 
      variables).

# SSACHR 0.15.1, 2021-07-20
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Improve IDNEWL and IDNEWA tibbles.
    * Improve explanatory text. 
* Update `inst/Step_02_Analysis.Rmd` to:
    * Change a section heading.
    * Add After Period Summary section with a new table. 
* Updated `inst/Temp_Code.R` by removing obsolete code. 
* Updated `inst/R_Citations.Rmd` to declare script location and put citation()
  calls in alphabetical order. 
* Updated `inst/README.Rmd` to 
    * Split install code for *devtools* and *SSACHR* into separate chunks.
    * Improve repository structure documentation. 

# SSACHR 0.15.0, 2021-07-19
* Moved data management code from `inst/Step_02_Analysis.Rmd` to 
 `inst/Step_01_Data_Mgt.Rmd`.
* Updated `inst/Step_01_Data_Mgt.Rmd` to create and save additional tibbles 
  based on person-period data sets. 

# SSACHR 0.14.1, 2021-07-16
* Added `inst/Temp_Code.R` to test out draft code we may use to revise analysis
  based on peer review feedback. 

# SSACHR 0.14.0, 2021-06-08
* Updated `inst/R_Citations.Rmd` to load and cite more packages. 
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Use new git_report() and which_latex() functions to report software 
      information. 
* Updated `inst/Step_02_Analysis.Rmd` to:
    * Add a section on CSC incident overlap with earliest known SAKs.
    * Use new git_report() and which_latex() functions to report software 
      information. 
    * Rename some chunks and fix table references. 
* Add `R/Utility_Functions.R` to:
    * Add new git_report() function. 
    * Add new which_latex() function. 
* Add new help documentation:
    * `man/git_report.Rd`
    * `man/which_latex.Rd`
* Updated `DESCRIPTION` and `NAMESPACE` to import additional functions from 
  other packages and export git_report() and which_latex(). 

# SSACHR 0.13.0, 2021-05-23
* Updated `inst/Step_02_Analysis.Rmd` to:
    * Fixed the Valid % column for overall incident counts in all frequency 
      tables. 
    * Improved code alignment for readability. 

# SSACHR 0.12.1, 2021-05-23
* Updated `README.Rmd` and `README.md` to:
    * Update badges. 
    * Fix library() call in example. 
    * Update software information section. 
    
# SSACHR 0.12.0, 2021-05-07
* Updated `inst/Step_02_Analysis.Rmd` to:
    * Add GEE model, estimated marginal means, and contrasts for overall 
      incident counts. 

# SSACHR 0.11.2, 2021-04-22
* Updated `inst/Step_02_Analysis.Rmd` to:
    * Round tables of GEE marginal means & contrasts to 2 digits instead of 3.
* Updated `inst/R_Citations.Rmd` to cite more packages. 
    
# SSACHR 0.11.1, 2021-04-22
* Updated `inst/Step_02_Analysis.Rmd` to:
    * Improve frequency tables by adding valid percent columns. 
    * Fixed p-value footnotes on GEE model tables. 

# SSACHR 0.11.0, 2021-04-15
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Selectively recode period-specific record count variables with values of 
      zero to missing data when the observed duration of the period in question
      was zero years.
* Updated `inst/Step_02_Analysis.Rmd` to:
    * Improved table of contents, explanatory text, and some formatting. 
    * Improved draft code for running GEE models and preparing tables of model 
      parameters, marginal means, and contrasts, then added similar code for 
      crime category specific sections. 

# SSACHR 0.10.0, 2021-04-13
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Rename some variables.
    * Added a scenario variable to IDNEW and a table and a table summarizing 
      its frequency distribution.
    * Selectively recode variables containing incident counts by period with 
      values of zero to missing data when the observed duration of the period 
      in question was zero years.
* Updated `inst/Step_02_Analysis.Rmd`.
    * Committed some changes actually made on 2021-04-12.
    * Worked on putting geeglm() model fit results, marginal means, and 
      contrasts into nice tables. 
    * Update variable names to match changes in `inst/Step_01_Data_Mgt.Rmd`.
    
# SSACHR 0.10.0, 2021-04-12
* Updated `inst/Step_02_Analysis.Rmd`.
    * Split first draft code chunk for GEE modeling into multiple chunks for
      better organization. 
    * Pushed some commits made on 2021-04-08. 
    * Fixed figure captions to enable figure referencing in the explanatory 
      text. 
    * Experimented with code for converting geeglm() model fit results into
      nice tables. 

# SSACHR 0.09.11, 2021-04-08
* Updated `inst/Step_02_Analysis.Rmd`.
    * Update box plot for age to show both age at earliest SAK and age at 
      CHR collection.
    * Improved figure for plotting Age16Date. 
    * Added a new figure for plotting WDate. 
    * Fixed some table output from html to latex format for improved appearance. 
    * Improved table of period durations. 
    * Simplified constructing lists of variable names in selected tables. 
    * Improved figure and table captions and footnotes. 
    * Improved explanatory text. 

# SSACHR 0.9.11, 2021-03-31
* Updated `inst/Step_01_Data_Mgt.Rmd` to improve Figure 1. 

# SSACHR 0.9.10, 2021-03-28
* Updated `inst/extdata/TWindow_Scenarios.csv` data file to improve figure of
  scenarios illustrating alignment of before, during, and after testing window
  periods with observed CHR period. 
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Improve figure showing alignment of before, during, and after testing 
      window periods with observed CHR period. 
    * Improve explanatory text. 
    * Move and disable some code used to seelct a color palette for a figure. 

# SSACHR 0.9.9, 2021-03-27
* Added `inst/extdata/TWindow_Scenarios.csv` data file required for plotting 
  scenarios illustrating alignment of before, during, and after testing window
  periods with observed CHR period. 
* Updated `inst/Step_01_Data_Mgt.Rmd` to add a table and a figure showing 
  alignment of before, during, and after testing window periods with observed 
  CHR period. 

# SSACHR 0.9.8, 2021-03-26
* Updated `inst/Step_01_Data_Mgt.Rmd` to refine variables used to compute 
  observed period durations. This is still work in progress. 
* Updated `.gitignore` and `.Rbuildignore` to omit *.log files created by 
  knitting to PDF. 
  
# SSACHR 0.9.7, 2021-03-20
* Updated `inst/Step_01_Data_Mgt.Rmd` to refine variables used to compute 
  observed period durations. This is still work in progress. 
* Updated `inst/Step_02_Analysis.Rmd` to add a new section to show data on 
  observed period durations. This is still work in progress. 

# SSACHR 0.9.6, 2021-03-20
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Remove first and last incident date variables from IDNEW.
    * Add more date, date interval, and period duration variables to IDNEW so 
      we can eventually adjust count data models with offsets based on duration
      of the periods before, during, and after the testing window. 
  
# SSACHR 0.9.5, 2021-03-16
* Updated `inst/Step_01_Data_Mgt.Rmd` to start adding first and last incident
  date variables to IDNEW. 

# SSACHR 0.9.4, 2021-03-10
* Updated `inst/Step_01_Data_Mgt.Rmd` to improve a table caption.
* Updated `inst/Step_02_Analysis.Rmd`.
    * Improved table captions and footnotes. 
    * Improved explanatory text. 
* Updated `README.Rmd` and `README.md` task list. 

# SSACHR 0.9.3, 2021-03-09 & 2021-03-10
* Updated `inst/Step_02_Analysis.Rmd` to continue adapting to focus on records 
  for incidents where offender was arrested, charged, or convicted of any of the
  12 main crime categories. 
    * Removed computations for variables we are not going to use in the paper. 
    * Improved table footnotes.
    * Switched source data for one table from JUDEW to CONEW to simplify code. 
    * Improved explanatory text.
    * Removed unnecessary subheading.
  
# SSACHR 0.9.2, 2021-03-08
* Updated `inst/Step_02_Analysis.Rmd` to continue adapting to focus on records 
  for incidents where offender was arrested, charged, or convicted of any of the
  12 main crime categories. 
    * Removed subheadings made obsolete by removing other content. 
    * Improved figure captions and a table footnote.
    * Improved explanatory text and removed references to tables that were 
      removed.
    * Simplified tables by removing variables inconsistent with the narrower 
      focus we have now adopted. 

# SSACHR 0.9.1, 2021-03-02
* Updated `inst/Step_02_Analysis.Rmd` to continue adapting to focus on records 
  for incidents where offender was arrested, charged, or convicted of any of the
  12 main crime categories. 
    * Removed separate outputs for "arrested", "charged"", and "convicted" 
      criteria.
    * Revised headings because we don't need as many subheadings.
    * Revised table and figure footnotes. 

# SSACHR 0.9.0, 2021-02-28
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Added and improved variable labels for several tibbles. 
    * Improved explanatory text. 
    * Improved Git status info code. 
* Updated `inst/Step_02_Analysis.Rmd` to:
    * Improved Git status info code. 
    * Improved some explanatory text and table captions in CHR Record Counts 
      section after adapting to focus on records for incidents where offender
      was arrested, charged, or convicted of any of the 12 main crime 
      categories. 

# SSACHR 0.8.1, 2021-02-25
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Fix some variable names in code. 
    * Added and improved explanatory text.
    * Adapted to focus on creating tibbles and variables to implement focus on 
      incidents where offender was arrested for, charged with, or convicted of 
      one or more of the main 12 crime categories. 
    * Updated table and figure captions. 

# SSACHR 0.8.0, 2021-02-19 
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Declare script location via here::i_am(). 
    * Fix file paths for SPSS data files work with updated *here* package. 
    * Add new variables for flagging ARR, CHG, JUD, & CON records associated 
      with any of the 12 crime categories of interest. 
    * Improve explanatory text. 
    * Fix object names referenced in some comments.
    * Change some case selection criteria to focus on incidents where the 
      offender was arrested for, charged with, or convicted of one of 12 crime
      crime categories of interest. 
* Updated `inst/Step_02_Analysis.Rmd` to:
    * Declare script location via here::i_am(). 
* Updated `README.Rmd` and `README.md` task list. 

# SSACHR 0.7.2, 2020-09-15
* Updated `R/Data_Mgt_Functions.R` to:
    * Rename data arguments used by getIIDs(), getINC(), getARRs(), getCHGs(), 
      and getJUDs().
    * Add assertions to check inputs to getIIDs(), getINC(), getARRs(), 
      getCHGs(), and getJUDs(). 
    * Update help files for getIIDs(), getINC(), getARRs(), getCHGs(), and 
      getJUDs(). 

# SSACHR 0.7.1, 2020-09-14
* Updated `R/Data_Mgt_Functions.R` to:
    * Update getIIDs() function to solve check() warnings.
    * Update getINC() function to solve check() warnings.
    * Update getARRs() function to solve check() warnings 
    * Add getCHGs() function. 
    * Add getJUDs() function.
* Updated help files for several functions. 
* Updated `inst/Step_03_Case_Studies.Rmd` to test new functions. 

# SSACHR 0.7.0, 2020-09-11
* Updated `R/Data_Mgt_Functions.R` to:
    * Add getIIDs() function.
    * Add getINC() function.
    * Add getARRs() function. 
* Added `inst/Step_03_Case_Studies.Rmd` as initial draft of a new file. This is
  not yet ready for use because we need to write and test additional functions
  to make it easy to extract a complete case study for a specified offender. 

# SSACHR 0.6.6, 2020-09-09
* Updated `inst/Step_02_Analysis.Rmd` to:
    * Finish revising Incident Counts by Crime Category section text, 
      subheadings, and content. Add more detail tables for additional 
      categories. 

# SSACHR 0.6.6, 2020-09-08
* Updated `inst/Step_02_Analysis.Rmd` to:
    * Rename some chunks and update table references to them. 
    * Continue revising Incident Counts by Crime Category section text, 
      subheadings, and content. Removed figures for criminal sexual conduct for
      consistency with similar sections. Add more detail tables for additional 
      categories. This is still work in progress. 
    
# SSACHR 0.6.5, 2020-09-07
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Remove code for objects we no longer use.
* Updated `inst/Step_02_Analysis.Rmd` to:
    * Improve explanatory text and add table references to text. 
    * Expand descriptive summary tables to include "arrested, charged, or 
      convicted" history variables.
    * Add more crime category-specific frequency tables. 
    * Reorganize CHR Record Counts section. 
    * Revise text in Crime Category Counts section and add headings. 
    * Add chunk to create objects used for constructing dynamic text. 
    * Add chunk with reusable table settings. 
    * Revise Incident Counts by Crime Category section text, subheadings, and 
      content. Removed figures from this section, so we rely only on tables
      now. Adding more detail tables for additional categories. This is still
      work in progress. 
    
* Updated `README.Rmd` and `README.md` to:
    * Update task list. 
    * Remove references to piercer package. 

# SSACHR 0.6.4, 2020-09-06
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Merge new variables into IDNEW as they are created rather than waiting 
      until later in the script. 
    * Change section headings and improve explanatory text. 
    * Remove obsolete section Incidents with Any CHR Criminal Sexual Conduct 
      Records.
    * Add new "arrested, charged, or convicted" crime category count variables
      (both overall and by IWhen). 
    * Rename chunks to reflect revised code organization. 
    * Improve variable labels for NHXCat12_1 to NHXCat12_999.
    * Improve code alignment for readability. 
    * Remove obsolete code. 
    * Change a table title to fix formatting problems in rest of document after
      the table (caused by using underscore characters in title). 
* Updated `inst/Step_02_Analysis.Rmd` to:
    * Make variable names match changes made in `inst/Step_01_Data_Mgt.Rmd`. 
    * Standardize some object names across crime category-specific sections. 
    * Rename chunks for clarity. 
    
# SSACHR 0.6.3, 2020-09-04
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Improve explanatory text. 
    * Change chunk labels for clarity.
    * Revised aggregation of crime category dummy variables to offender-level 
      incident count variables and how we merge them onto IDNEW. 
    * Added crime category history variables to INCEW. 
    * Add a table comparing HXCat12_5 to CSC_ANY. 
    * Aggregate crime category history variables to incident counts and merge 
      them onto IDNEW. 

# SSACHR 0.6.2, 2020-09-03
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Commit some changes actually made on 09/01/20.
    * Add a Glossary section. 
    * Add a table showing crime category dummy variable names. 
    * Merge crime category dummy variables onto INCEW.
    * Update some headings. 

# SSACHR 0.6.2, 2020-09-01
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Add explanatory text.
    * Simplify some comments in code chunks. 
    
# SSACHR 0.6.1, 2020-08-31
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Rename tibbles and relabel chunks to improve clarity.
    * Split the Aggregating Crime Category Dummy Variables section into multiple 
      sections (one to incident level, another to offender level).
    * Split some chunks into multiple pieces to store tibbles aggregated to the
      incident level for additional uses and move the remaining parts under 
      the new section on aggregating to offender level. 
    * Remove RobustMax() function definition and replace it with calls to the 
      new robustmax() function. 
    * Improve some comments. 
* Updated `inst/Step_02_Analysis.Rmd` to add draft code for expanding arson 
  analysis to match level of detail used for criminal sexual conduct. 

# SSACHR 0.6.0, 2020-08-31
* Updated `inst/R/Data_Mgt_Functions.R` to add a new robustmax() function.
* Updated `NAMESPACE` via document(). 
* Updated `man/robustmax.Rd` help documentation via document(). 

# SSACHR 0.5.5, 2020-08-16
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Create and merge NCSC_ANY and NCSCHistory variables (overall and split by 
      IWhen) onto IDNEW. 
    * Expand the Check Assumptions section.
* Updated `inst/Step_02_Analysis.Rmd` to: 
    * Add more variables to CSC tables. 
    * Add more frequency table output for NCSCHistory (overall and split by 
      IWhen). 
    * Improve the densityplot_CSCCOUNTS chunk and resulting plot. 
    * Move sme chunks and text. 

# SSACHR 0.5.4, 2020-08-14--2020-08-15
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Added more crime category count variables with corresponding variable 
      labels. 
    * Removed calls to citation(), because they are now collected in a different
      script.
    * Replaced missing values in more crime category count variables with zeros. 
    * Improved Software Information section.
* Updated `inst/Step_02_Analysis.Rmd` to: 
    * Removed calls to citation(), because they are now collected in a different
      script.
    * Replaced descriptives and frequencies tables for overall variables with 
      expanded tables that also show breakdowns by when incident occurred. 
    * Added better table captions and footnotes. 
    * Improved figure for offender age. 
    * Improved plots in CHR Record Counts section.
    * Changed criteria for identifying offenders with CSC history in CHR data. 
    * Improved plot in Criminal Sexual Conduct section.
    * Improved age at arrest for CSC table.
    * Improved Software Information section.
    * Added chunk labels. 
* Added `inst/R_Citations.Rmd` to collect all R and R package citations in one 
  place. 
* Updated `README.Rmd` and `README.md` task list.

# SSACHR 0.5.3, 2020-08-13
* Updated `inst/Step_02_Analysis.Rmd` to: 
    * Create incident count variables for specific crime categories that are 
      broken down by when incident occurred relative to testing window and merge
      them into IDNEW. 
    * Change some tibble names and code chunk labels. 
* Updated `README.Rmd` and `README.md` task list.

# SSACHR 0.5.2, 2020-08-12
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Fix variable labels assigned to aggregated variables. 
    * Improve heading structure.
    * Improve formatting consistency. 
* Updated `inst/Step_02_Analysis.Rmd` to: 
    * Expand CHR record counts table to include breakdowns by when incidents 
      occurred relative to testing window (IWhen).
    * Test a tidyverse method for getting side-by-side frequency tables for 
      related variables (e.g., NINC, NINC_Before, NINC_During, & NINC_After).

# SSACHR 0.5.1, 2020-08-11
* Updated `.Rbuildignore` to fix errors and warnings from check() and 
  install_github(). 
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Merge additional aggregated variables onto IDNEW, replace NA values with 
      zeroes, and add variable labels.
    * Improve explanatory text. 
    * Fix sme object references to tibbles.

# SSACHR 0.5.0, 2020-08-11
* Added `inst/Step_02_Analysis.Rmd` by copying `inst/Step_01_Data_Mgt.Rmd` then
  removing the data management code at the start. 
* Updated `inst/Step_01_Data_mgt.Rmd` to:
    * Remove analysis code that got moved to `inst/Step_02_Analysis.Rmd`.
    * Add code to save out data at end of script. 
    * Fix spelling errors. 
    * Rmeove the Document Information section. 
    * Update the Software Information section. 
    * Remove chunks no longer required and rename other chunks. 
    * Improve some table formatting. 
    * Create additional aggregated variables.

# SSACHR 0.4.4, 2020-08-10
* Committed changes to `DESCRIPTION` and `NEWS.md` that were made on 2020-08-06
  as par of version 0.4.3. 
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Fix a heading's level.
    * Add a new section: Merging Testing Window Variables Onto Conviction 
      Records. 
    * Update the CHR Count Overview section to show record counts before vs. 
      after case selection based on testing window data. 
    * Fix errors in Crime Category Count section caused by referring to original 
      tibbles instead of the new ones that have extra variables. 
    
# SSACHR 0.4.3, 2020-08-06
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Improve Software Information section, including how we get package version 
      output and add Git commit and status information. 

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
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
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
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Switched source used to merge testing window variables onto INC data. 
    * Add an extra variable to IDNEW. 
    * Added more output tables and improved table captions. 
    * Fix typos in explanatory text. 
    * Add sections for merging testing window variables onto CHG and JUD data. 
    * Move and improve code for merging NCON variable onto IDN data. 

# SSACHR 0.3.13, 2020-07-10
* Updated `README.Rmd` and `README.md` heading structure and task list. 
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
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
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Change headings to improve organization and clarity.
    * Rename chunks and selected variables.
    * Simplify code and improve comments. 
    * Merge testing window variables onto INC and ARR data.

# SSACHR 0.3.11, 2020-06-16
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Improve explantory text and comments in code chunks. 
    * Add new tables.
    * Add new IWhen variable. 
    * Improve and rename objects for table captions and footnotes. 

# SSACHR 0.3.10, 2020-06-05
* Updated `inst/Step_01_Data_Mgt.Rmd` to:
    * Improve code for computing WDate and related variables. 
    * Document case selection criteria for offenders with known WDate.
    * Add a clean, formatted table. 
    * Start the section for merging WDate onto INC data. 
    * Add and improve explanatory text. 
* `inst/Step_01_Data_mgt.Rmd` is still in draft status, with much left to do.
* Updated task list in `README.Rmd`. 
    
# SSACHR 0.3.9, 2020-06-02
* Updated `inst/Step_01_Data_Mgt.Rmd` to improve some explanatory text,
  create and examine WDate variable.

# SSACHR 0.3.8, 2020-05-31
* Updated `inst/Step_01_Data_Mgt.Rmd` to improve some explanatory text.

# SSACHR 0.3.7, 2020-05-26
* Committed some changes actually made on 2020-05-22. 
* Updated `inst/Step_01_Data_Mgt.Rmd` to improve some explanatory text.
  
# SSACHR 0.3.6, 2020-05-22
* Updated `inst/Step_01_Data_Mgt.Rmd` to improve SPD import and work on 
  identifying earliest SAK for each offender.
  
# SSACHR 0.3.5, 2020-05-12
* Updated `inst/Step_01_Data_Mgt.Rmd` to improve SPD import and create SPDE 
  dataset.

# SSACHR 0.3.4, 2020-05-12
* Updated `inst/Step_01_Data_Mgt.Rmd` as follows.
    * Fixed computation of NCON variable.
    * Updated heading structure and moved some code to different sections.
    * Removed import code for data files we will not need.
    * Deleted code for creating variables we will not be using. 
    * Added code 

# SSACHR 0.3.3, 2020-05-10
* Updated `inst/Step_01_Data_Mgt.Rmd` as follows.
    * Updated more code to use tidyverse-style piped operations (still have more 
      to do).  

# SSACHR 0.3.2, 2020-05-08
* Updated task list in `README.Rmd` and `README.md`.
* Updated dfsummary() function in `R/Data_Mgt_Functions.R` to eliminate warning 
  message when used with a data frame that does not contain an IID variable.
* Updated `inst/Step_01_Data_Mgt.Rmd` as follows.
    * Added a chunk label. 
    * Fixed some data import code. 
    * Updated some code to use tidyverse-style piped operations (still have more 
      to do).

# SSACHR 0.3.1, 2020-05-07
* Updated `inst/Step_01_Data_Mgt.Rmd` as follows.
    * Remove chunk for installing `piercer` package and associated text. 
    * Use here:here() to access files. 
    * Switch to use tidyverse style for data import code. 
    * Make code more readable. 

# SSACHR 0.3.0, 2020-05-05
* Updated `README.Rmd` and `README.md` extensively.
* Update `.gitignore` to ignore SPSS data files in `inst/extdata` subfolder. 
* Added dcode() and rvlabel() to `R/Data_Mgt_Functions.R`.
* Updated help files for dcode() and rvlabel().
* Updated `inst/Step_01_Data_Mgt.Rmd` by copying in code from previous script 
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
* Added `inst/Step_01_Data_Mgt.Rmd` script. It is an early draft and will be 
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
