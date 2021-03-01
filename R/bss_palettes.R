#'define palettes
#' @export
#' @import dplyr
#'
bss_palettes <- list(
  `monochrom_black1` = bss_colors %>% filter(col_pal==1) %>% select(hashed_hex) %>% t(),
  `monochrom_green`  = bss_colors %>% filter(col_pal==6) %>% select(hashed_hex) %>% t(),
  `monochrom_red`    = bss_colors %>% filter(col_pal==7) %>% select(hashed_hex) %>% t(),
  `monochrom_yellow` = bss_colors %>% filter(col_pal==8) %>% select(hashed_hex) %>% t(),
  `monochrom_blue`   = bss_colors %>% filter(col_pal==9) %>% select(hashed_hex) %>% t(),
  `main`             = bss_colors %>% filter(Typ==0)     %>% select(hashed_hex) %>% t(),
  `main_only_color`  = bss_colors %>% filter(Typ==0,col_pal==5|
                                             col_pal==6|
                                             col_pal==7|
                                             col_pal==8|
                                             col_pal==9) %>% select(hashed_hex) %>% t()
  )


#' @title bss_pal
#'
#' @param palette define which palette to use, main by default
#' @param reverse reverses the palettes' order
#' @param ...
#'
#' @return
#' @export
#' @import grDevices
#' @import dplyr
#' @examples
bss_pal <- function(palette = "main_only_color", reverse = FALSE, ...) {
  pal <- bss_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
