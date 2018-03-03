#' Social
#'
#' Displays calls-to-action for various social networks with their associated logo.
#' You can activate/deactivate any icon, with \code{display} property.
#'
#' @inheritParams mj_ml
#' @param display icon to display.
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_social("facebook")
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-social}
#'
#' @export
mj_social <- function(display, ...){
  if(missing(display))
    stop("missing display")
  htmltools::tag("mj-social", list(display = display, ...))
}

#' Image
#'
#' Displays a responsive image in your email. It is similar to the HTML
#' \code{<img/>} tag. Note that if no width is provided, the image will use the parent column width.
#'
#' @inheritParams mj_ml
#' @param src image source.
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_image(paste0("https://media.vanityfair.com/photos/",
#'                     "54cbf3da998d4de83ba3602a/master/w_960,c_limit/image.jpg"))
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-image}
#'
#' @export
mj_image <- function(src, ...){
  if(missing(src))
    stop("missing src")
  htmltools::tag("mj-image", list(src = src, ...))
}
