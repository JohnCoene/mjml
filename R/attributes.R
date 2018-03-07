#' Modify defaults
#'
#' This tag allows you to modify default attributes on a \code{ml_tag} and add \code{mj_class} to them.
#'
#' @inheritParams mj_ml
#'
#' @section Functions:
#' \itemize{
#'   \item{\code{mj_attributes} }{Wrap all your attributes.}
#'   \item{\code{mj_class} }{Add a class.}
#'   \item{\code{mj_all} }{Set default attributes for every components inside your email.}
#' }
#'
#' @examples
#' mj_ml(
#'   mj_head(
#'     mj_attributes(
#'       mj_text(padding = 0),
#'       mj_class(name = "blue", color = "blue"),
#'       mj_class(name = "big", `font-size` = "20px"),
#'       mj_all(`font-family` = "Arial")
#'     )
#'   ),
#'   mj_body(
#'     mj_container(
#'       mj_section(
#'         mj_column(
#'           mj_text(
#'             `mj-class` = "blue big",
#'             "Blue text in Arial and 20px"
#'           )
#'         )
#'       )
#'     )
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-attributes}
#'
#' @rdname attributes
#' @export
mj_attributes <- function(...){
  htmltools::tag("mj-attributes", list(...))
}

#' @rdname attributes
#' @export
mj_all <- function(...){
  htmltools::tag("mj-all", list(...))
}

#' @rdname attributes
#' @export
mj_class <- function(...){
  htmltools::tag("mj-class", list(...))
}
