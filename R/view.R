#' Viewer
#'
#' Preview email in the RStudio viewer
#'
#' @param mjml An \code{mjml} object as returned by \code{\link{mj_ml}.}
#'
#' @examples
#' if(interactive()){
#' mj_ml(
#'   mj_body(
#'     mj_column(
#'       width = "20%",
#'       mj_text("First columns")
#'     ),
#'     mj_column(
#'       width = "80%",
#'       mj_text("The body")
#'     )
#'   )
#' ) %>%
#'   mj_view()
#' }
#'
#' @export
mj_view <- function(mjml){
  if(missing(mjml))
    stop("missing mjml")

  temp_mjml <- tempfile(fileext = ".mjml")
  out <- mj_save_mjml(mjml, temp_mjml)
  temp_html <- tempfile(fileext = ".html")
  output <- mj_convert_html(out, temp_html)
  unlink("temp_mjml", recursive = TRUE)
  viewer <- getOption("viewer")
  if(is.null(rstudioapi::isAvailable())){
    cat("RStudio not running")
    return()
  }
  
  rstudioapi::viewer(output)
}
