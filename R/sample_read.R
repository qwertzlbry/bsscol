#' @title sample_read
#'
#' @param path  path to filename
#'
#' @return a \code{tibble}
#' @export
#' @import readr
#'
#' @examples
#' csv = system.file("extdata", "Farbspektrum.csv", package = "bsscol")
#' sample_read(csv)
sample_read <- function(path){
  readr::read_csv(path)
}
