#' Show Routines you have active
#'
#' This function shows all of your active routines as of the last occasion that routines were set.
#'
#' @export

showRoutines <- function(directory = getwd()) {
  read.csv(paste0(directory, "/routines.csv"), stringsAsFactors = F)
}
