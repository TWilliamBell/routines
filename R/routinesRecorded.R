#' Return All Recorded Routines
#'
#' Returns every routine that you've logged.
#'
#' @export

routinesRecorded <- function(directory = getwd()) {
  read.csv(paste0(directory, "/routineRecord.csv"), stringsAsFactors = F)
}
