#' Title
#'
#' @param p_boys
#' @param p_girls
#' @param j_boys
#' @param j_girls
#'
#' @return
#' @export
#'
#' @examples

total_gender_enroll <- function(p_boys, p_girls, j_boys, j_girls) {

  #primary total vs secondary total by gender
  total_enroll <- c(sum(p_boys), sum(as.numeric(p_girls)), sum(j_boys), sum(as.numeric(j_girls)))
  t_label <- c('Primary Boys', 'Primary Girls', 'Jss Boys', 'Jss Girls')
  piepercent <- round(100*total_enroll/sum(total_enroll), 1)
  piepercent <- paste(piepercent,'%',sep = "")
  pie(total_enroll, labels = piepercent, main = "Primary and Junior Secondary Enrollment by Gender 2017/2018 ", col = rainbow(length(total_enroll)))
  legend("topright", t_label, fill=rainbow(length(total_enroll)))

}
