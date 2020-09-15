#' @name dfsummary
#'
#' @title Summarize properties of criminal history records data frames.
#'
#' @description This function summarizes specific properties of data frames
#'   into a short data frame.
#'
#' @param x A data frame containing variables named OID and IID.
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
                    N.Incidents = ifelse(test = "IID" %in% names(x),
                                         yes = length(unique(x$IID)),
                                         no = 0),
                    N.Offenders = length(unique(x$OID)),
                    Earliest = min(dvar),
                    Latest = max(dvar),
                    row.names = label)
  return(res)
  }

#'=============================================================================
#' @name dcode
#'
#' @title Convert a factor into a set of dummy codes.
#'
#' @description The function converts a factor variable into a set of dummy
#'   codes then adds them to the data frame on which it operates.
#'
#' @param x A data frame containing the factor varable to be dummy coded.
#'
#' @param y The factor to be recoded.
#'
#' @param stem A character value for the stem of the variable names for the
#'   resulting dummy codes.
#'
#' @details Each level of the factor will be turned into a new binary variable
#'   in the data frame x with a name of the form stem_level.
#'
#' @return An updated data frame containing the new dummy-coded variables.
#'
#' @export
dcode <- function(x, y, stem) {
  for(level in levels(y)){
    vname <- paste(stem, level, sep = "_")
    x[vname] <- as.integer(ifelse(y == level, yes = 1, no = 0))
    }
  return(x)
  }

#'=============================================================================
#' @name rvlabel
#'
#' @title Replace a specific value label in an labelled_spss object.
#'
#' @description The function replaces a specific value label with a new label.
#'
#' @param x A variable with class = labelled_spss.
#'
#' @param from A character value for the old label to be replaced.
#'
#' @param to A character value for the new label that will replace the old one.
#'
#' @details This function is primarily used to get around the fact that
#'   parentheses in the value labels imported with some SPSS data files cause
#'   a problem with some of our R code. this allows us to quickly replace those
#'   value labels.
#'
#' @return An updated variable with class = labelled_spss.
#'
#' @export
rvlabel <- function(x, from = "Excluded (user-missing)",
                    to = "Excluded user-missing") {
  y <- attr(x, "labels")
  names(y) <- c(names(y[!names(y) %in% from]), to)
  attr(x, "labels") <- y
  return(x)
  }

#'=============================================================================
#' @name robustmax
#'
#' @title Robust maxima
#'
#' @description Returns the regular maxima of the input values x using max(x)
#'   except it just returns NA when x is an empty vector.
#'
#' @param x Numeric or character arguments.
#'
#' @param na.rm A logical indicating whether missing values should be removed.
#'
#' @details This function solves warnings issued by max() when it is used on an
#'   empty vector. Using max(numeric(0)) yields a warning
#'   "no non-missing arguments to max; returning -Inf" and is very slow about
#'   doing that. So, robustmax() is a replacement function that just returns NA
#'   when the vector is empty. That speeds things up dramatically.
#'
#' @seealso \code{\link[base]{Extremes}}
#'
#' @return A length one vector. The type of the result will be that of the
#'   highest of the inputs in the hierarchy integer < double < character.
#'
#' @export
robustmax <- function(x, na.rm = FALSE) {
  if (length(x) > 0) max(x, na.rm = na.rm) else NA
  }

#'=============================================================================
#' @name getIIDs
#'
#' @title Get all the incident IDs (IIDs) for an offender.
#'
#' @description Returns a vector of all the incident IDs (IIDs) associated with
#'   the specified offender ID (OID).
#'
#' @param oid A single character value for an offender's OID.
#'
#' @param idata A data frame (or tibble) containing criminal history incident
#'   records.
#'
#' @details This function subsets the data frame supplied in the incidents
#'   parameter to retain only records with OIDs matching the supplied oid
#'   parameter. It them extracts the incident IDs from the IID variable and
#'   returns them.
#'
#' @import dplyr
#'
#' @return A character vector containing IIDs from all incident records where
#'   offender OID = oid.
#'
#' @export
getIIDs <- function(oid, idata) {
  idata %>%
    filter(.data$OID == oid) %>%
    pull(.data$IID) %>%
    as.character() ->
    IIDs
  return(IIDs)
}

#'=============================================================================
#' @name getINC
#'
#' @title Get a criminal history incident record.
#'
#' @description Retrieves a criminal history incident record in preparation
#'   for subsequent display in a case history.
#'
#' @param iid A single character value for an incident ID (IID).
#'
#' @param idata A data frame (or tibble) containing criminal history incident
#'   records.
#'
#' @details This function subsets the data frame supplied in the incidents
#'   parameter down to only the record with an IID matching the supplied iid
#'   parameter. It also selects a subset of variables. Along the way it renames
#'   HXCat12_5 to CSC_ACC. That binary history variable represents whether the
#'   offender was arrested, charged, or convicted of criminal sexual conduct in
#'   connection with the incident, which is related to but slightly narrower
#'   than CSC_ANY, which is a binary variable indicating whether the offender
#'   was arrested, charged, or adjudicated for any criminal sexual conduct
#'   charges (regardless of judicial disposition) in connection with the
#'   incident.
#'
#' @import dplyr
#'
#' @return A tibble containing the variables OID, IID, IDate, OAgeI, CSC_ARR,
#'   CSC_CHG, CSC_JUD, CSC_CON, CSC_ANY, and CSC_ACC.
#'
#' @export
getINC <- function(iid, idata) {
  idata %>%
    filter(.data$IID == iid) %>%
    rename(CSC_ACC = .data$HXCat12_5) %>%
    select(.data$OID, .data$IID, .data$IDate, .data$OAgeI, .data$CSC_ARR,
           .data$CSC_CHG, .data$CSC_JUD, .data$CSC_CON, .data$CSC_ANY,
           .data$CSC_ACC) ->
    IRow
  return(IRow)
}

#'=============================================================================
#' @name getARRs
#'
#' @title Get criminal history arrest offense records for an incident.
#'
#' @description Retrieves the criminal history arrest offense records associated
#'   with a specific incident in preparation for subsequent display in a case
#'   history.
#'
#' @param iid A single character value for an incident ID (IID).
#'
#' @param adata A data frame (or tibble) containing criminal history arrest
#'   offense records.
#'
#' @details This function subsets the data frame supplied in the arrests
#'   parameter down to only the records with IIDs matching the supplied iid
#'   parameter. It also selects a subset of variables.
#'
#' @import dplyr
#' @importFrom haven as_factor
#'
#' @return A tibble containing the variables AID, ADate, OAgeA, ACount, AClass,
#'   ACat12, AType, ADisp, ACounty, AMImp.
#'
#' @export
getARRs <- function(iid, adata) {
  adata %>%
    filter(.data$IID == iid) %>%
    select(.data$AID, .data$ADate, .data$OAgeA, .data$ACount, .data$AClass,
           .data$ACat12, .data$AType, .data$ADisp, .data$ACounty,
           .data$AMImp) %>%
    mutate(AClass = as_factor(.data$AClass),
           ACat12 = as_factor(.data$ACat12),
           AType = as_factor(.data$AType),
           ADisp = as_factor(.data$ADisp),
           ACounty = as_factor(.data$ACounty),
           AMImp = as_factor(.data$AMImp)) ->
    ARows
  return(ARows)
}

#'=============================================================================
#' @name getCHGs
#'
#' @title Get criminal history prosecutor charge records for an incident.
#'
#' @description Retrieves the criminal history prosecutor charge records
#'   associated with a specific incident in preparation for subsequent display
#'   in a case history.
#'
#' @param iid A single character value for an incident ID (IID).
#'
#' @param cdata A data frame (or tibble) containing criminal history
#'   prosecutor charge records.
#'
#' @details This function subsets the data frame supplied in the arrests
#'   parameter down to only the records with IIDs matching the supplied iid
#'   parameter. It also selects a subset of variables.
#'
#' @import dplyr
#' @importFrom haven as_factor
#'
#' @return A tibble containing the variables CID, CDate, OAgeC, CCount, CCit,
#'   CCat12, CCounty, CMImp.
#'
#' @export
getCHGs <- function(iid, cdata) {
  cdata %>%
    filter(.data$IID == iid) %>%
    select(.data$CID, .data$CDate, .data$OAgeC, .data$CCount, .data$CCit,
           .data$CCat12, .data$CCounty, .data$CMImp) %>%
    mutate(CCit = as_factor(.data$CCit),
           CCat12 = as_factor(.data$CCat12),
           CCounty = as_factor(.data$CCounty),
           CMImp = as_factor(.data$CMImp)) ->
    CRows
  return(CRows)
}

#'=============================================================================
#' @name getJUDs
#'
#' @title Get criminal history judicial charge records for an incident.
#'
#' @description Retrieves the criminal history judicial charge records
#'   associated with a specific incident in preparation for subsequent display
#'   in a case history.
#'
#' @param iid A single character value for an incident ID (IID).
#'
#' @param jdata A data frame (or tibble) containing criminal history judicial
#'   charge records (i.e., adjudicated charges).
#'
#' @details This function subsets the data frame supplied in the arrests
#'   parameter down to only the records with IIDs matching the supplied iid
#'   parameter. It also selects a subset of variables.
#'
#' @import dplyr
#' @importFrom haven as_factor
#'
#' @return A tibble containing the variables JID, JDate, OAgeJ, JCount, JCit,
#'   JCat12, JCounty, JDateImp.
#'
#' @export
getJUDs <- function(iid, jdata) {
  jdata %>%
    filter(.data$IID == iid) %>%
    select(.data$JID, .data$JDate, .data$OAgeJ, .data$JCount, .data$JCit,
           .data$JCat12, .data$JDisp, .data$JCounty, .data$JDateImp) %>%
    mutate(JCit = as_factor(.data$JCit),
           JCat12 = as_factor(.data$JCat12),
           JDisp = as_factor(.data$JDisp),
           JCounty = as_factor(.data$JCounty),
           JDateImp = as_factor(.data$JDateImp)) ->
    CRows
  return(CRows)
}
