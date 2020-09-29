#' Title
#'
#' @param primary
#' @param jss
#'
#' @return
#' @export
#'
#' @examples
#'


total <- function(primary, jss) {

  #primary total vs secondary total
  prim_sec <- c(as.numeric(primary), as.numeric(jss))
  prim_sec_label <- c('Primary', 'Junior Secondary')
  piepercent <- round(100*prim_sec/sum(prim_sec), 1)
  piepercent <- paste(piepercent,'%',sep = "")
  pie(prim_sec, labels = prim_sec, main = "Primary and Junior Secondary Enrollment 2017/2018", col = rainbow(length(prim_sec)))
  legend("topright", prim_sec_label, fill=rainbow(length(prim_sec)))

}
