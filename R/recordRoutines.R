#' Record Completed Routines
#'
#' If you've completed an activity (or an activity was left incomplete) and you'd like to record that you've finished it (or left it unfinished), then log it here.
#'
#' @export

recordRoutines <- function(routinesCompleted, completed = T, directory = getwd()) {
  if (!prod(routinesCompleted %in%
            showRoutines(directory = directory)$Routines)) {
    warning("A routine recorded is not in your list of daily routines.")
  }
  if (!is.logical(completed)) {
    error("completed is supposed to be a boolean value.")
  }
  record <- data.frame("Time" = as.character(Sys.Date()), "Routine" = routinesCompleted, "Completed?" = completed)
  record <- rbind(routinesRecorded(directory = directory), record)
  write.csv(record, file = paste0(directory, "/routineRecord.csv"),
            row.names = F)
}
