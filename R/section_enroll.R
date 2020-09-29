#' Title
#'
#' @param valu
#' @param desc
#' @param yax
#'
#' @return
#' @export
#'
#' @examples
section_enroll <- function(valu, desc, yax) {

  barplot(as.numeric(valu), ylim = c(0,as.numeric(yax)), names.arg = lga, main = desc, col="green", las=2)
}
