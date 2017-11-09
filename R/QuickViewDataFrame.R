#' Quick View Data Frame
#'
#' @param df Data frame for rapid viewing in RStudio's View window
#'
#' @return NA
#'
#' @examples
#' For best results, bind this function to a keyboard shortcut, potentially
#' Command + Shift + V (Mac OS) or Control + Shift + V (Windows).
#' This will allow you to simply highlight the data frame of interest,
#' or the code which generates the data frame, and quickly view it in
#' RStudio's standard View window.
#'
#' iris  # - Highlight this data frame in RStudio's source window and run
#'       # - the macro.  It will automatically open in the View window.
#'
#' library(dplyr) # - In the below example, note how you can also highlight
#'                # - and view code that generates a data frame.
#' iris %>% filter(Species == 'setosa')
QuickViewDataFrame <- function(h = GetHighlightedDF()) {

  View(x = h$df,
       title = h$df.text)

}
