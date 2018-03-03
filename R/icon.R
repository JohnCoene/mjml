#' Add icons
#'
#' Add icons.
#'
#' @inheritParams mj_ml
#' @param display icon to display.
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_social("facebook")
#'   )
#' )
#'
#' @export
mj_social <- function(display, ...){
  if(missing(display))
    stop("missing display")
  htmltools::tag("mj-social", list(display = display, ...))
}
