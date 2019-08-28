#' Set up a routine record
#'
#' This will set up a directory where you may record your routines and whether you've completed them.
#'
#' @export

newRoutineRecord <- function(directory = getwd()) {
  datum <- data.frame("Time" = as.character(Sys.Date()), "Routine" = "Setting up routine record", "Completed?" = T)
  write.csv(datum, paste0(directory, "/routineRecord.csv"), row.names = F)
  routine <- data.frame("Routines" = c("Eating breakfast"),
                        "Description" = c("Morning routine"))
  write.csv(routine, paste0(directory, "/routines.csv"), row.names = F)
}
