#' Show routines that aren't complete
#'
#' A function that only returns routines not yet marked as complete today.
#'
#' @export

routinesNotCompleted <- function(directory = getwd()) {
  today <- as.character(Sys.Date())
  routinesToday <- showRoutines(directory)
  routinesRecord <- routinesRecorded(directory)
  routinesRecord <- routinesRecord[routinesRecord$Time == today, ]$Routine
  setdiff(routinesToday$Routines, routinesRecord)
}
