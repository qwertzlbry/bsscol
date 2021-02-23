#' Define color vectorF and unctionalize the data, this  allows us to get hex colors in a robust and flexible way.
#' @export
bss_colors <- c(
`sky blue` = "#6bc5ff",
`yellow`   = "#eeec22",
`red`      = "#e5233d",
`green`    = "#abe441",
`blue`     = "#155f90")
#' @title bss_cols
#'
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
bss_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (bss_colors)

  bss_colors[cols]
}
