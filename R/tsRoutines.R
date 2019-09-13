#' Track your Success over Time
#' 
#' Aggregates success rate by day, and graphs the results as a time series of sorts if plot is set to TRUE.
#'
#' @param directory the directory in which the routines are kept
#' @param plot whether to plot the results
#' @param Other various graphical parameters
#'
#' @return Returns a data frame with the success rate by day, and plots a graph if plot is set to true.
#' @export
#'

tsRoutines <- function(directory = getwd(), plot = T, 
                       ylim = c(0, 1), cex = 0.1, xlab = "Time", 
                       ylab = "Success Rate", col = "black", ...) {
  results <- routinesRecorded(directory = directory)
  results[ , 1] <- as.Date(results[ , 1])
  results <- aggregate(results[ , 3], by = list(Time = results$Time), 
                       FUN = mean, na.rm = T)
  colnames(results)[2] <- "Success Rate"
  if (isTRUE(plot)) {
    plot(results, cex = cex, xlab = xlab, ylab = ylab, 
         ylim = ylim, ...) +
      lines(results, col = col)
  }
  return(results)
}
