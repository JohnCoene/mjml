#' Preview
#'
#' This tag allows you to set the preview that will be displayed in the inbox of the recipient.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_head(
#'     mj_preview("Hello MJML")
#'   )
#' )
#'
#' @export
mj_preview <- function(...){
  htmltools::tag("mj-preview", list(...))
}

#' Title
#'
#' This tag allows you to set the title of an MJML document.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_head(
#'     mj_title("Hello MJML")
#'   )
#' )
#'
#' @export
mj_title <- function(...){
  htmltools::tag("mj-title", list(...))
}

#' Style
#'
#' #' Style
#'
#' This tag allows you to set CSS styles that will be applied to the HTML in your MJML document
#' as well as the HTML outputted. The CSS styles will be added to the head of the rendered HTML
#' by default, but can also be inlined by using the \code{inline="inline"} attribute.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'  mj_head(
#'    mj_style(
#'      inline = TRUE,
#'      ".color{color:'blue'}"
#'    )
#'  ),
#'  mj_body(
#'     mj_text(
#'       `mj-class` = "color",
#'       "Blue text"
#'     )
#'   )
#' )
#'
#' @export
mj_style <- function(...){
  htmltools::tag("mj-style", list(...))
}


#' Font
#'
#' This tag allows you to import fonts if used in your MJML document.
#'
#' @param href URL of the font.
#' @param name Name of the font.
#'
#' @examples
#' mj_ml(
#'  mj_head(
#'    mj_font(
#'      href = "https://fonts.googleapis.com/css?family=Raleway",
#'      name = "Raleway"
#'    )
#'  ),
#'  mj_body(
#'     mj_text(
#'       `font-family` = "Raleway, Arial",
#'       "Blue text"
#'     )
#'   )
#' )
#'
#' @export
mj_font <- function(href, name){
  htmltools::tag("mj-font", list(href = href, name = name))
}
