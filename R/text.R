#' Text
#'
#' Add text.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_head(
#'     mj_attributes(
#'       mj_text(color = "blue")
#'     )
#'   ),
#'   mj_body(
#'     mj_container(
#'       mj_section(
#'         mj_text("Some blue text")
#'       )
#'     )
#'   )
#' )
#'
#' @export
mj_text <- function(...){
  htmltools::tag("mj-text", list(...))
}
