% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Data_Mgt_Functions.R
\name{robustmax}
\alias{robustmax}
\title{Robust maxima}
\usage{
robustmax(x, na.rm = FALSE)
}
\arguments{
\item{x}{Numeric or character arguments.}

\item{na.rm}{A logical indicating whether missing values should be removed.}
}
\value{
A length one vector. The type of the result will be that of the
  highest of the inputs in the hierarchy integer < double < character.
}
\description{
Returns the regular maxima of the input values x using max(x)
  except it just returns NA when x is an empty vector.
}
\details{
=============================================================================

This function solves warnings issued by max() when it is used on an
  empty vector. Using max(numeric(0)) yields a warning
  "no non-missing arguments to max; returning -Inf" and is very slow about
  doing that. So, robustmax() is a replacement function that just returns NA
  when the vector is empty. That speeds things up dramatically.
}
\seealso{
\code{\link[base]{Extremes}}
}
