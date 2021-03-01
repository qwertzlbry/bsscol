#' Define color vectorF and unctionalize the data, this  allows us to get hex colors in a robust and flexible way.
#' @export
#' @import readr


bss_colors <- readRDS("data/Farbspektrum.rds")
basic_colors<- c(
  `weiss` = "#FFFFFF" ,
`schwarz`  ="#000000" ,
`hellgrau1`="#F2F2F2" ,
`grau` ="#BFBFBF" ,
`blau`  = "#155F90" ,
`grün`   =  "#ABE441" ,
`rot`     = "#E5233D",
`gelb`  = "#EEEC22" ,
`hellblau` =  "#6BC5FF",
`hellgrau2`= "#EDF6F9")


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
    return (basic_colors)

  basic_colors[cols]
}




