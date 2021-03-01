#' @title scale_color_bss
#'
#' @param palette Character name of palette in bss_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ...
#'
#' @return
#' @export
#' @import ggplot2
#' @examples
scale_color_bss <- function(palette = "main_only_color", discrete = TRUE, reverse = FALSE, ...) {
  pal <- bss_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("bss_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}


#' @title scale_fill_bss
#'
#' @param palette Character name of palette in bss_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ...
#'
#' @return
#' @export
#' @import ggplot2
#' @examples
scale_fill_bss <- function(palette = "main_only_color", discrete = TRUE, reverse = FALSE, ...) {
  pal <- bss_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("bss_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
