#' Compare MPG by Cylinder Count
#'
#' @param data A dataframe with `mpg` and `cyl` columns.
#'
#' @return A ggplot boxplot.
#' @export
compare_mpg <- function(data) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) stop("Please install ggplot2.")
  ggplot2::ggplot(data, ggplot2::aes(x = factor(cyl), y = mpg)) +
    ggplot2::geom_boxplot(fill = "steelblue") +
    ggplot2::labs(title = "MPG by Cylinder Count", x = "Cylinders", y = "Miles per Gallon")
}
