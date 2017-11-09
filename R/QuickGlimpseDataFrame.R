#' Quick Glimpse Data Frame
#'
#' @param df Data frame for rapid glimpsing
#'
#' @return NA
#' 
#' @importFrom dplyr glimpse
QuickGlimpseDataFrame <- function(h = GetHighlightedDF()) {

  glimpse(x = h$df)

}
