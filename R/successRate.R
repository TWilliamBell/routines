#' What proportion of activities are true out of activities marked T/F?
#'
#' Returns a single value which is the proportion of Trues among Trues and Falses.
#'
#' @export

successRate <- function(directory = getwd(), onlyCurrentRoutines = F, na.rm = T) {
  if (isFALSE(onlyCurrentRoutines)) {
    mean(routines::routinesRecorded(directory)$Completed, na.rm = na.rm)
  } else if (isTRUE(onlyCurrentRoutines)) {
    x <- showRoutines()
    colnames(x)[1] <- "Routine"
    mean(dplyr::inner_join(routines::routinesRecorded(), x, "Routine")$Completed., na.rm = na.rm)
  } else {
    error("onlyCurrentRoutines must be T/F.")
  }
}
