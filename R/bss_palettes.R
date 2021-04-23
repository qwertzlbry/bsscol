#'define palettes
#' @export
#' @import dplyr
#'
bss_palettes <- list(
  `monochrome_black1` = bss_colors %>% filter(col_pal==1) %>% arrange(Typ) %>% select(hashed_hex) %>% t(),
  `black_yellow`      = c(bss_colors %>% filter(col_pal==1) %>% arrange(Typ) %>% select(hashed_hex) %>% t(),
                          bss_colors %>% filter(col_pal==8) %>% arrange(-Typ) %>% select(hashed_hex) %>% t()),

  `black_red`      = c(bss_colors %>% filter(col_pal==1) %>% arrange(Typ) %>% select(hashed_hex) %>% t(),
                          bss_colors %>% filter(col_pal==7) %>% arrange(-Typ) %>% select(hashed_hex) %>% t()),

  `black_green`      = c(bss_colors %>% filter(col_pal==1) %>% arrange(Typ) %>% select(hashed_hex) %>% t(),
                       bss_colors %>% filter(col_pal==6) %>% arrange(-Typ) %>% select(hashed_hex) %>% t()),

  `monochrome_green`  = bss_colors %>% filter(col_pal==6) %>% arrange(Typ) %>% select(hashed_hex) %>% t(),
  `monochrome_red`    = bss_colors %>% filter(col_pal==7) %>% arrange(Typ) %>% select(hashed_hex) %>% t(),
  `red_green`         = c(bss_colors %>% filter(col_pal==7) %>% arrange(Typ) %>% select(hashed_hex) %>% t(),
                          bss_colors %>% filter(col_pal==6) %>% arrange(-Typ) %>% select(hashed_hex) %>% t()),

  `red_yellow`        = c(bss_colors %>% filter(col_pal==7) %>% arrange(Typ) %>% select(hashed_hex) %>% t(),
                           bss_colors %>% filter(col_pal==8) %>% arrange(-Typ) %>% select(hashed_hex) %>% t()),

  `monochrome_yellow` = bss_colors %>% filter(col_pal==8) %>% arrange(Typ) %>% select(hashed_hex) %>% t(),
  `monochrome_blue`   = bss_colors %>% filter(col_pal==9) %>% arrange(Typ) %>% select(hashed_hex) %>% t(),
  `blue_yellow`       = c(bss_colors %>% filter(col_pal==9) %>% arrange(Typ) %>% select(hashed_hex) %>% t(),
                          bss_colors %>% filter(col_pal==8) %>% arrange(-Typ) %>% select(hashed_hex) %>% t()),

  `blue_green`        = c(bss_colors %>% filter(col_pal==9) %>% arrange(Typ) %>% select(hashed_hex) %>% t(),
                         bss_colors %>% filter(col_pal==6) %>% arrange(-Typ) %>% select(hashed_hex) %>% t()),

  `blue_red`          = c(bss_colors %>% filter(col_pal==9) %>% arrange(Typ) %>% select(hashed_hex) %>% t(),
                          bss_colors %>% filter(col_pal==7) %>% arrange(-Typ) %>% select(hashed_hex) %>% t()),

  `main`              = bss_colors %>% filter(Typ==0)     %>% arrange(Typ) %>% select(hashed_hex) %>% t(),
  `main_only_color`   = bss_colors %>% filter(Typ==0,col_pal==5|
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
