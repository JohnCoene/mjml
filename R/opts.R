#' Divider
#'
#' Add a divider.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_head(
#'     mj_text("The header")
#'   ),
#'   mj_body(
#'     mj_divider(),
#'     mj_text("The body")
#'   )
#' )
#'
#' @export
mj_divider <- function(...){
  htmltools::tag("mj-divider", list(...))
}
