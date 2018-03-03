#' Button
#'
#' Add a button.
#'
#' @inheritParams mj_ml
#' @param href href link.
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_container(
#'       mj_button("http://john-coene.com", "Button")
#'     )
#'   )
#' )
#'
#' @export
mj_button <- function(href = "#", ...){
  htmltools::tag("mj-button", list(href = href, ...))
}
