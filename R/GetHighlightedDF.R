#' GetHighlightedDF
#'
#' @return List
#'
#' @examples None
GetHighlightedDF <- function() {

  # Extract Context From Active Document
  # Purpose: Extract highlighted text from source document
  context <- rstudioapi::getActiveDocumentContext()
  df.text <- context$selection[[1]]$text


  # Error Checking to Ensure Text is Selected
  if (nchar(df.text) == 0) {
    stop("Nothing is highlighted in the RStudio Source Editor. Please ensure a data frame is highlighted.",
         call. = FALSE)
  }

  # Execute Code
  # Purpose: Account for cases where highlighed text may not be a data frame, but code that generates one
  #          Example - iris %>% filter(Species == "setosa")
  df <- eval(parse(text = df.text))

  # Final Preparation and Return
  if (!is.data.frame(df)) {
    stop("Must select data frame ...",
         call. = FALSE)
  }
  attr(df, "name") <- df

  return(list(df = df, df.text = df.text))

}
