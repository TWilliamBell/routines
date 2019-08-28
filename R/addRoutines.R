#' Add Routines
#'
#' Add a new routine to your daily plan.
#'
#' @export

addRoutines <- function(routinesToAdd,
                        descriptions = rep("", length(routinesToAdd)),
                        directory = getwd()) {
  routines <- showRoutines(directory)
  write.csv(rbind(routines, data.frame(Routines = routinesToAdd,
                                       Description = descriptions)),
            file = paste0(directory, "/routines.csv"),
            row.names = F)
}
