#'define palettes
#' @export
bss_palettes <- list(
  `rgb`   = bss_cols("red", "green", "blue"),

  `cool`  = bss_cols("blue", "sky blue", "green"),

  `hot`   = bss_cols("yellow", "red", "green"),

  `main`   = bss_cols("sky blue", "yellow", "red", "green", "blue"))


#' @title bss_pal
#'
#' @param palette
#' @param reverse
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
bss_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- bss_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
