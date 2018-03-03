#' MJML
#'
#' Core components of an MJML email.
#'
#' @param ... Unnamed items that comprise this list of MJML tags.
#'
#' @examples
#' mj_ml(
#'   mj_head("header"),
#'   mj_body("footer")
#' )
#'
#' @rdname setup
#' @export
mj_ml <- function(...){
  htmltools::tag("mjml", list(...))
}

#' @rdname setup
#' @export
mj_head <- function(...){
  htmltools::tag("mj-head", list(...))
}

#' @rdname setup
#' @export
mj_body <- function(...){
  htmltools::tag("mj-body", list(...))
}

#' @rdname setup
#' @export
mj_include <- function(...){
  htmltools::tag("mj-include", list(...))
}
