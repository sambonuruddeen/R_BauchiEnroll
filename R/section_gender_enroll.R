#' Title
#'
#' @param section
#' @param girls
#' @param title
#'
#' @return
#' @export
#'
#' @examples


section_gender_enroll <- function(section, girls, title) {
  #plot pie chart of Section enrollment by gender

  bb <- as.numeric(section) - as.numeric(girls)
  dat <- c(bb, as.numeric(girls))
  label <- c('Boys', 'Girls')
  piepercent<- round(100*dat/sum(dat), 1)
  piepercent <- paste(piepercent,'%',sep = "")
  pie(dat, labels = piepercent, main = title, col = rainbow(length(dat)))
  legend("topright", label, fill=rainbow(length(dat)))
}
