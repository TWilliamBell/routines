#' Record all remaining routines
#'
#' If you have many routines and are not actively recording their completion throughout the day, it can be helpful to check all of them as complete or incomplete at the end of the day.  That is the purpose of this function.  It takes your list of routines and records them all as either complete or incomplete (T/F/NA).  Will not overwrite existing routine records for that day (if some were logged).
#'
#' @export


finishRoutines <- function(completed = T, directory = getwd()) {
  if (!is.logical(completed)) {
    error("finishRoutines is supposed to take in a boolean value for completion or non-completion.")
  }
  allRoutines <- showRoutines(directory = directory)$Routines
  recordedRoutines <- routinesRecorded(directory = directory)
  allRoutines <- allRoutines[!allRoutines %in% recordedRoutines$Routine[recordedRoutines$Time == as.character(Sys.Date())]]
  if (length(allRoutines) == 0) {
    return("All routines marked as complete for today already.")
  }
  record <- data.frame("Time" = as.character(Sys.Date()),
                       "Routine" = allRoutines,
                       "Completed?" = completed)
  write.csv(rbind(recordedRoutines, record),
            file = paste0(directory, "/routineRecord.csv"),
            row.names = F)
}
