#' View Data Frame
#'
#' @param df Data frame for rapid viewing
#'
#' @return NA
#'
#' @examples NA
#' For best results, bind this function to a keyboard shortcut.
#' This will allow you to simply highlight the data frame of interest,
#' or the code which generates the data frame, and quickly view it in
#' RStudio's standard View window.
ViewDataFrame <- function(df = GetHighlightedDF()) {

  if (!is.data.frame(df)) {
    stop("Must select data frame ...")
  }

  View(x = df,
       title = "ViewDataFrame")

}
