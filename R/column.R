#' Layout
#'
#' Create colmns, sections and containers.
#'
#' @inheritParams mj_ml
#'
#' @section Function:
#' \itemize{
#'   \item{\code{mj_section} }{Horizontal sections.}
#'   \item{\code{mj_container} }{Standard container.}
#'   \item{\code{mj_column} }{Column, up to four.}
#' }
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_container(
#'       mj_section(
#'         mj_column(
#'           mj_text("First Column")
#'         ),
#'         mj_column(
#'           mj_text("Second Column")
#'         )
#'       ),
#'       mj_section(
#'         mj_column(
#'           mj_text("First Column")
#'         ),
#'         mj_column(
#'           mj_text("Second Column")
#'         ),
#'         mj_column(
#'           mj_text("Third Column")
#'         )
#'       )
#'     )
#'   )
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
mj_section <- function(...){
  htmltools::tag("mj-section", list(...))
}
