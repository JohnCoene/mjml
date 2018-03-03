#' Navbar
#'
#' Displays a menu for navigation with an optional hamburger mode for mobile devices.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_navbar(
#'       mj_column(
#'         width = "20%",
#'         mj_image(
#'           paste0("https://media.vanityfair.com/photos/",
#'           "54cbf3dafde9250a6c402ed2/master/w_690,c_limit/image.jpg")
#'         )
#'       ),
#'       mj_column(
#'         width = "80%",
#'         mj_inline_links(
#'           `base-url` = "http://john-coene.com",
#'           mj_link(
#'             href = "/datamaps"
#'           ),
#'           mj_link(
#'             href = "/packages/fullPage/"
#'           )
#'         )
#'       )
#'     )
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-navbar}
#'
#' @rdname navbar
#' @export
mj_navbar <- function(...){
  htmltools::tag("mj-navbar", list(...))
}

#' @rdname navbar
#' @export
mj_link <- function(...){
  htmltools::tag("mj-link", list(...))
}

#' @rdname navbar
#' @export
mj_inline_links <- function(...){
  htmltools::tag("mj-inline-links", list(...))
}
