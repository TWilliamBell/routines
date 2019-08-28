#' Find all Routines of a Particular Kind
#'
#' If you use the description feature for routines, you may wish to filter by routines that match a specific description.  For instance, to bring up all your morning routines.
#'
#' @export

showKindOfRoutine <- function(description, directory = getwd(),
                              exactMatching = F) {
  routinesDF <- showRoutines(directory)
  if (isTRUE(exactMatching)) {
    return(routinesDF[routinesDF$Description %in% description, ])
  } else if (isFALSE(exactMatching)) {
    return(routinesDF[grepl(description, routinesDF$Description,
                          ignore.case = T), ])
  } else {
    error("Exact matching must be a boolean value.")
  }
}
