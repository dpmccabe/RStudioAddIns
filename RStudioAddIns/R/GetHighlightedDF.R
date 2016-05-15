#' GetHighlightedDF [Credit to: https://github.com/holstius]
#'
#' @return Data frame
#'
#' @examples None
GetHighlightedDF <- function() {

  # Extract Context From Active Document
  # Purpose: Extract highlighted text from source document
  context <- rstudioapi::getActiveDocumentContext()
  df_name <- context$selection[[1]]$text

  # Error Checking to Ensure Text is Selected
  if (nchar(df_name) == 0) {
    err_msg <- "Nothing is highlighted (in the RStudio source editor). Ensure a data frame is highlighted."
    stop(err_msg, call. = FALSE)
  }

  # Execute Code
  # Purpose: Account for cases where highlighed text may not be a data frame, but code that generates one
  #          Example - iris %>% filter(Species == "setosa")
  df <- eval(parse(text = df_name))

  # Final Preparation and Return
  stopifnot(is.data.frame(df))
  attr(df, "name") <- df

  return(df)

}
