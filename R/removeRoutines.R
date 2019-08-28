#' Remove a routine you've set
#'
#' If a routine no longer seems manageable or worthwhile, you can remove it from your list of routines.
#'
#' @export

removeRoutines <- function(routinesToRemove, directory = getwd()) {
  routinesDF <- showRoutines(directory)
  routinesDF <- routinesDF[!routines$Routines %in% routinesToRemove, ]
  write.csv(routinesDF, paste0(directory, "/routines.csv"),
            row.names = F)
}
