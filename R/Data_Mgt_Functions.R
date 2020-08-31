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
