TIDNEW <-
  IDNEW %>%
  select(HXCat12_1_After, HXCat12_2_After, HXCat12_3_After, HXCat12_4_After,
         HXCat12_5_After, HXCat12_6_After, HXCat12_7_After, HXCat12_8_After,
         HXCat12_9_After, HXCat12_10_After, HXCat12_11_After, HXCat12_12_After,
         HXCat12_Count_After)

names(TIDNEW) <- c(paste0("HCA_", 1:12), "HCA_Count")




# For the after period, get total number and percent of offenders with 1 or more
# incidents, plus the total number of incidents arrested, charged, or convicted

TCap <- paste("Summary of Offenders Arrested, Charged, or Convicted for at",
              "Least One Incident Occuring After the Testing Window By",
              "Crime Category")
FN <- paste("Separately for each crime category, we counted offenders arrested,",
            "charged, or convicted for at least one incident occurring after",
            "the testing window. The numerator for each percentage is the",
            "listed value for n; the denominator is the full sample size (N = ",
            "1,082). Total incidents are summed across the offenders.")

IDNEWA %>%
  filter(Variable != "HXCat12_Count") %>%
  filter(Count > 0) %>%
  group_by(Variable, VLabel, VOrder) %>%
  summarise(N = n(),
            Pct = 100*N/nrow(IDNEW),
            Incidents = sum(Count)) %>%
  ungroup() %>%
  arrange(VOrder) %>%
  select(VLabel, N, Pct, Incidents) %>%
  kable(., format = "html", booktabs = TRUE, digits = 1, row.names = FALSE,
        col.names = c("Crime Category", "n", "%", "Total Incidents After TW"),
        format.args = list(big.mark = ','), caption = TCap) %>%
  kable_styling() %>%
  add_header_above(c(" " = 1, "Offenders" = 2, " " = 1)) %>%
  group_rows("Sexual Crimes", 1, 2) %>%
  group_rows("Violent Non-Sexual Crimes", 3, 7) %>%
  group_rows("Property Crimes", 8, 10) %>%
  group_rows("Other Crimes", 11, 12) %>%
  column_spec(., column = 2, width = "1.15cm") %>%
  column_spec(., column = 3, width = "1.15cm") %>%
  column_spec(., column = 4, width = "2cm") %>%
  footnote(general = FN, general_title = "Note: ", footnote_as_chunk = TRUE,
           threeparttable = TRUE)

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

TIDNEW %>%
  select(HCA_1, HCA_2, HCA_3, HCA_4, HCA_5, HCA_6, HCA_7, HCA_8, HCA_9,
         HCA_10, HCA_11, HCA_12) %>%
  pivot_longer(data = ., cols = starts_with("HCA_"), names_to = "Category",
               values_to = "ICount") %>%
  mutate(Crime = case_when(Category == "HCA_1" ~ "Arson",
                           Category == "HCA_2" ~ "Assault, Domestic Violence",
                           Category == "HCA_3" ~ "Assault, non-Domestic Violence",
                           Category == "HCA_4" ~ "Burglary",
                           Category == "HCA_5" ~ "Criminal Sexual Conduct (CSC)",
                           Category == "HCA_6" ~ "Drug Crimes",
                           Category == "HCA_7" ~ "Homicide",
                           Category == "HCA_8" ~ "Larceny, Theft, Fraud",
                           Category == "HCA_9" ~ "Robbery",
                           Category == "HCA_10" ~ "Sex Crimes (non-CSC crimes)",
                           Category == "HCA_11" ~ "Traffic & Ordinances",
                           Category == "HCA_12" ~ "Weapons")) %>%
  mutate(Crime = factor(Crime, levels = CCLabels, labels = CCLabels),
         # Also create CrimeRev where the order of levels is reversed to make it
         # easy to get a boxplot with the criem categories shown in same order
         # as we get them for histograms and tables.
         CrimeRev = factor(Crime, levels = rev(CCLabels),
                           labels = rev(CCLabels))) ->
  tmpdf

tmpdf

# Full view (larceny is category w/ largest observed value (ICount = 37)
histogram(~ ICount | Crime, data = tmpdf, type = "count", as.table = TRUE,
          # Breaks is set so we get a bin for every integer value of ICount.
          breaks = -1:38, xlim = c(-1, 38),
          xlab = "No. incidents after testing window",
          ylab = "No. of offenders (frequency)")

# Zoom in on ICount values of 0-10
histogram(~ ICount | Crime, data = tmpdf, type = "count", as.table = TRUE,
          # Breaks is set so we get a bin for every integer value of ICount.
          breaks = -1:38, xlim = c(-1, 10),
          xlab = "No. incidents after testing window",
          ylab = "No. of offenders (frequency)")

# Zoom in on frequency of 0-300.
histogram(~ ICount | Crime, data = tmpdf, type = "count", as.table = TRUE,
          # Breaks is set so we get a bin for every integer value of ICount.
          breaks = -1:38, ylim = c(0, 300),
          xlab = "No. incidents after testing window",
          ylab = "No. of offenders (frequency)")

# U
bwplot(CrimeRev ~ ICount, data = tmpdf, factor = 1.5, xlim = c(-2, 40),
       as.table = TRUE,
       panel = panel.mybox, par.settings = my.boxes,
       xlab = "No. incidents after testing window")
