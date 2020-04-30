#' @name panel.mybox
#'
#' @title Panel function for overlaying a box plot on a strip plot.
#'
#' @description This function allows you to overlay a boxplot on top of a
#'   jittered strip plot.
#'
#' @param ... Arguments are passed to panel.stripplot() and panel.bwplot().
#'
#' @details This custom panel function designed for use with the
#'   lattice::bwplot() function simplifies overlaying a box plot on top of a
#'   jittered strip plot.
#'
#' @seealso \code{\link[lattice]{panel.stripplot}} and
#'   \code{\link[lattice]{panel.bwplot}}.
#'
#' @export
panel.mybox <- function(...){
  panel.stripplot(..., col = "grey55", jitter = TRUE)
  panel.bwplot(..., do.out = FALSE)}

#'=============================================================================
#' @name panel.mydensity
#'
#' @title Panel function for overlaying a normal curve on a density plot.
#'
#' @description This function allows you to overlay a normal distribution curve
#'   on top of a density plot.
#'
#' @param x Data points for which density is to be estimated, as discussed in
#'   help for panel.densityplot().
#'
#' @param ... Arguments are passed to panel.densityplot() and panel.mathdensity().
#'
#' @details This panel function designed for use with lattice::densityplot()
#'   simplifies overlaying a normal distribution curve on top of a density plot.
#'
#' @seealso \code{\link[lattice]{densityplot}},
#'   \code{\link[lattice]{panel.densityplot}}, and
#'   \code{\link[lattice]{panel.mathdensity}}.
#'
#' @export
# Panel function for densityplot() that adds a normal curve too.
panel.mydensity <- function(x, ...) {
  panel.densityplot(x, lwd = 2, col.line = "black", col = "grey55", ...)
  panel.mathdensity(dmath = dnorm, col = "red", lty = 2, lwd = 2,
                    args = list(mean = mean(x, na.rm = TRUE),
                                sd = sd(x, na.rm = TRUE)),
                    ...)
  }
