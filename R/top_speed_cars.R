#' Compare MPG by Cylinder Count
#'
#' @param data A dataframe with `mpg` and `cyl` columns.
#' @return A ggplot boxplot.
#' @export
top_speed_cars <- function(data, top_n = 5) {
  data$hp_per_wt <- data$hp / data$wt
  data[order(-data$hp_per_wt), ][1:top_n, ]
}
