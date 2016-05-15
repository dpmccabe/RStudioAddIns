#' ViewDataFrame
#'
#' @param df - Data Frame
#'
#' @return NA
#'
#' @examples NA
ViewDataFrame <- function(df) {

  if (!is.data.frame(df)) {
    stop("Must select data frame ...")
  }

  View(x = df,
       title = "ViewDataFrame")

}
