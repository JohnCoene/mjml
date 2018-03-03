#' Accordion
#'
#' An interactive MJML component to stack content in tabs, so the information is
#' collapsed and only the titles are visible. Readers can interact by clicking on
#' the tabs to reveal the content, providing a great experience on mobile devices
#' where space is scarce.
#'
#' @inheritParams mj_ml
#'
#' @section Functions:
#' \itemize{
#'   \item{\code{ml_accordion} }{Setup accordion.}
#'   \item{\code{mj_accordion_element} }{Accordion element.}
#'   \item{\code{ml_accordion_title} }{Accordion title.}
#'   \item{\code{ml_accordion_text} }{Accordion text.}
#' }
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_container(
#'       mj_accordion(
#'         mj_accordion_element(
#'           mj_accordion_title("First element"),
#'           mj_accordion_text("Text of first element")
#'         ),
#'         mj_accordion_element(
#'           mj_accordion_title("Second element"),
#'           mj_accordion_text("Text of second element")
#'         )
#'       )
#'     )
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-accordion}
#'
#' @rdname accordion
#' @export
mj_accordion <- function(...){
  htmltools::tag("mj-accordion", list(...))
}

#' @rdname accordion
#' @export
mj_accordion_element <- function(...){
  htmltools::tag("mj-accordion-element", list(...))
}

#' @rdname accordion
#' @export
mj_accordion_title <- function(...){
  htmltools::tag("mj-accordion-title", list(...))
}

#' @rdname accordion
#' @export
mj_accordion_text <- function(...){
  htmltools::tag("mj-accordion-text", list(...))
}
