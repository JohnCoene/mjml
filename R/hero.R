#' Hero
#'
#' Display a section with a background image and some content inside (\code{\link{mj_text}},
#' \code{\link{mj_button}}, \code{\link{mj_image}} ...) wrapped in mj-hero-content component.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_container(
#'       mj_hero(
#'         mode = "fluid-height",
#'         `background-url` = paste0("https://media.vanityfair.com/photos/",
#'                                   "54cbf3da998d4de83ba3602a/master/",
#'                                   "w_960,c_limit/image.jpg"),
#'         mj_hero_content(
#'           mj_text("HERO")
#'         ),
#'         mj_button("MJML")
#'       )
#'     )
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-hero}
#'
#' @rdname hero
#' @export
mj_hero <- function(...){
  htmltools::tag("mj-hero", list(...))
}

#' @rdname hero
#' @export
mj_hero_content <- function(...){
  htmltools::tag("mj-hero-content", list(...))
}
