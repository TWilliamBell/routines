#' What proportion of activities are true out of activities marked T/F?
#'
#' Returns a single value which is the proportion of Trues among Trues and Falses.
#'
#' @export

successRate <- function(directory = getwd()) {
  tabularResults <- table(routines::routinesRecorded(directory)$Completed)/length(na.omit(routines::routinesRecorded(directory)$Completed))
  unname(tablularResults[names(tabularResults) == "TRUE"])
}
