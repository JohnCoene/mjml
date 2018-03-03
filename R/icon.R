#' Icons
#'
#' Add icons.
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
#' @export
mj_social <- function(display, ...){
  if(missing(display))
    stop("missing display")
  htmltools::tag("mj-social", list(display = display, ...))
}

#' Images
#'
#' Add a images.
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
#' @export
mj_image <- function(src, ...){
  if(missing(src))
    stop("missing src")
  htmltools::tag("mj-divider", list(src = src, ...))
}
