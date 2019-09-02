#' What proportion of activities are true out of activities marked T/F?
#'
#' Returns a single value which is the proportion of Trues among Trues and Falses.
#'
#' @export

successRate <- function(directory = getwd()) {
  unname((table(routines::routinesRecorded(directory)$Completed)/length(routines::routinesRecorded(directory)$Completed))[2])
}
