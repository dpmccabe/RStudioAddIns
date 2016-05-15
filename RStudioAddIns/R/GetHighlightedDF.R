#' GetHighlightedDF [Credit to: https://github.com/holstius]
#'
#' @return Highlighted data frame
#'
#' @examples None
GetHighlightedDF <- function() {

  # Extract Context From Active Document
  # Purpose:
  context <- rstudioapi::getActiveDocumentContext()
  df_name <- context$selection[[1]]$text

  if (nchar(df_name) == 0) {
    err_msg <- "Nothing is highlighted (in the RStudio source editor). Ensure a data-frame is highlighted."
    stop(err_msg, call. = FALSE)
  }

  df <- eval(parse(text = df_name))

  stopifnot(is.data.frame(df))
  attr(df, "name") <- df

  return(df)

}
