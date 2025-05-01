#' Summary Statistics for a Numeric Vector
#'
#' @param x A numeric vector.
#'
#' @return A list of summary statistics.
#' @export
summary_stats <- function(x) {
  if (!is.numeric(x)) stop("Input must be numeric.")
  stats <- list(
    mean = mean(x, na.rm = TRUE),
    median = median(x, na.rm = TRUE),
    sd = sd(x, na.rm = TRUE),
    min = min(x, na.rm = TRUE),
    max = max(x, na.rm = TRUE),
    n = sum(!is.na(x)),
    na_count = sum(is.na(x))
  )
  class(stats) <- "summary_stats"
  return(stats)
}

#' @export
print.summary_stats <- function(x, ...) {
  cat("Summary Statistics:\n")
  cat(sprintf("Mean:    %.2f\n", x$mean))
  cat(sprintf("Median:  %.2f\n", x$median))
  cat(sprintf("SD:      %.2f\n", x$sd))
  cat(sprintf("Min:     %.2f\n", x$min))
  cat(sprintf("Max:     %.2f\n", x$max))
  cat(sprintf("Count:   %d\n", x$n))
  cat(sprintf("NA Count:%d\n", x$na_count))
}
