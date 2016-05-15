#' View Data Frame
#'
#' @param df Data frame for rapid viewing
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

ViewDataFrame <- function(df = GetHighlightedDF()) {

  if (!is.data.frame(df)) {
    stop("Must select data frame ...")
  }

  View(x = df,
       title = "ViewDataFrame")

}

#TODO: Add function for copying data frame to clipboard [OS, windows, linux] (http://www.johndcook.com/blog/r_excel_clipboard/)
#TODO: Add gif movies for example functions
#TODO: Submit to list of maintained addins (https://github.com/daattali/addinslist#readme)
