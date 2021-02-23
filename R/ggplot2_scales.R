#' @title scale_color_bss
#'
#' @param palette
#' @param discrete
#' @param reverse
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
scale_color_bss <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- bss_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("bss_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}


#' @title scale_fill_bss
#'
#' @param palette
#' @param discrete
#' @param reverse
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
scale_fill_bss <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- bss_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("bss_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
