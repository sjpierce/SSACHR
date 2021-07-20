TIDNEW <-
  IDNEW %>%
  select(HXCat12_1_After, HXCat12_2_After, HXCat12_3_After, HXCat12_4_After,
         HXCat12_5_After, HXCat12_6_After, HXCat12_7_After, HXCat12_8_After,
         HXCat12_9_After, HXCat12_10_After, HXCat12_11_After, HXCat12_12_After,
         HXCat12_Count_After)

names(TIDNEW) <- c(paste0("HCA_", 1:12), "HCA_Count")

# Graph after period frequency distrbutions
CCLabels <- c("Criminal Sexual Conduct (CSC)",
              "Sex Crimes (non-CSC crimes)",
              "Assault, Domestic Violence",
              "Assault, non-Domestic Violence",
              "Homicide",
              "Robbery",
              "Weapons",
              "Arson",
              "Burglary",
              "Larceny, Theft, Fraud",
              "Drug Crimes",
              "Traffic & Ordinances")

IDNEWA %>%
  # Drops rows for crime category counts and individuals with no incidents
  filter(Variable != "HXCat12_Count") %>%
  mutate(Crime = factor(VLabel, levels = CCLabels, labels = CCLabels),
         # Also create CrimeRev where the order of levels is reversed to make it
         # easy to get a boxplot with the criem categories shown in same order
         # as we get them for histograms and tables.
         CrimeRev = factor(VLabel, levels = rev(CCLabels),
                           labels = rev(CCLabels))) ->
  tmpdf2



# Full view (larceny is category w/ largest observed value (ICount = 37)
histogram(~ Count | Crime, data = tmpdf2, type = "count", as.table = TRUE,
          # Breaks is set so we get a bin for every integer value of ICount.
          breaks = -0.5:37.5, xlim = c(-1, 38), rug = TRUE,
          xlab = "No. incidents after testing window",
          ylab = "No. of offenders (frequency)")


# Zoom in on ICount values of 0-10
histogram(~ Count | Crime, data = tmpdf2, type = "count", as.table = TRUE,
          # Breaks is set so we get a bin for every integer value of ICount.
          breaks = -0.5:37.5, xlim = c(-1, 10),
          xlab = "No. incidents after testing window",
          ylab = "No. of offenders (frequency)")




# Zoom in on frequency of 0-300.
histogram(~ Count | Crime, data = tmpdf2, type = "count", as.table = TRUE,
          # Breaks is set so we get a bin for every integer value of ICount.
          breaks = -0.5:37.5, ylim = c(0, 300),
          xlab = "No. incidents after testing window",
          ylab = "No. of offenders (frequency)")

# Zoom in on frequency of 0-300 and Count values 0-10.
histogram(~ Count | Crime, data = tmpdf2, type = "count", as.table = TRUE,
          # Breaks is set so we get a bin for every integer value of ICount.
          breaks = -0.5:37.5, xlim = c(-1, 10), ylim = c(0, 300),
          xlab = "No. incidents after testing window",
          ylab = "No. of offenders (frequency)")


# U
bwplot(CrimeRev ~ Count, data = tmpdf2, factor = 1.25, xlim = c(-2, 42),
       as.table = TRUE,
       panel = panel.mybox, par.settings = my.boxes,
       xlab = "No. incidents after testing window")

bwplot(~ Count | Crime, data = tmpdf2, factor = 24,
       as.table = TRUE, xlim = c(-2, 42),
       panel = panel.mybox, par.settings = my.boxes,
       xlab = "No. incidents after testing window")

bwplot(~ Count | Crime, data = tmpdf2, factor = 24,
       as.table = TRUE, xlim = c(-2, 12),
       panel = panel.mybox, par.settings = my.boxes,
       xlab = "No. incidents after testing window")

bwplot(~ Count | Crime, data = tmpdf2, factor = 24, layout = c(1,12),
       as.table = TRUE, xlim = c(-2, 42),
       panel = panel.mybox, par.settings = my.boxes,
       xlab = "No. incidents after testing window")


# Note sure beeswarm is going to do any better than bwplot with these data.
library(beeswarm)
beeswarm(Count ~ Crime, data = tmpdf2, corral = "wrap", side = 0,
         vertical = FALSE)



