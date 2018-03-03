#' Create columns
#'
#' Create up to 4 columns.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_body("")
#' )
#'
#' @export
mj_column <- function(...){
  htmltools::tag("mj-column", list(...))
}

#' Create a container
#'
#' Create a container.
#'
#' @inheritParams mj_ml
#'
#' @export
mj_container <- function(...){
  htmltools::tag("mj-container", list(...))
}

#' Create a section
#'
#' Create a section.
#'
#' @inheritParams mj_ml
#'
#' @export
mj_container <- function(...){
  htmltools::tag("mj-section", list(...))
}
