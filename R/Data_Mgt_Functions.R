#' @name dfsummary
#'
#' @title Summarize properties of criminal history records data frames.
#'
#' @description This function summarizes specific properties of data frames
#'   into a short data frame.
#'
#' @param x A data frame ata frame containing variables named OID and IID.
#'
#' @param label An optional vector of row names for the resulting data frame.
#'
#' @param dvar A date variable to be summarized. The earliest and latest date
#'   values will be extracted and stored as variables in the result.
#'
#' @details This function counts the number of records in the data frame, .
#'
#' @return A data frame containing variables N.Records, N.Incidents (based on
#'   unique values for x$IID), N.Offenders (based on unique values for x$OID),
#'   Earliest, and Latest.
#'
#' @export
dfsummary <- function(x, label = NULL, dvar) {
  res <- data.frame(N.Records = nrow(x),
                    N.Incidents = length(unique(x$IID)),
                    N.Offenders = length(unique(x$OID)),
                    Earliest = min(dvar),
                    Latest = max(dvar),
                    row.names = label)
  return(res)
  }

#'=============================================================================
