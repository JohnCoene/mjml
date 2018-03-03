#' Column
#'
#' Columns enable you to horizontally organize the content within your sections.
#' They must be located under mj-section tags in order to be considered by the engine.
#' To be responsive, columns are expressed in terms of percentage. Every single column has
#' to contain something because they are responsive containers, and will be vertically stacked
#' on a mobile view. Any standard component, or component that you have defined and registered,
#' can be placed within a column – except mj-column or mj-section elements.
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
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-column}
#'
#' @export
mj_column <- function(...){
  htmltools::tag("mj-column", list(...))
}

#' Container
#'
#' Create a container.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_container(
#'       mj_text("Some text")
#'     )
#'   )
#' )
#'
#' @export
mj_container <- function(...){
  htmltools::tag("mj-container", list(...))
}

#' Section
#'
#' Sections are intended to be used as rows within your email. They will be used to structure the layout.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_container(
#'       mj_section(
#'         mj_text("Body")
#'       )
#'     )
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-section}
#'
#' @export
mj_section <- function(...){
  htmltools::tag("mj-section", list(...))
}


#' Wrapper
#'
#' Wrapper enables to wrap multiple sections together. It's especially useful to achieve nested
#' layouts with shared border or background images across sections.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_container(
#'       mj_wrapper(
#'         mj_section(
#'           mj_column(
#'             mj_text("Some text")
#'           )
#'         ),
#'         mj_section(
#'           mj_column(
#'             mj_text("Text"),
#'             mj_divider(),
#'             mj_text("More text")
#'           )
#'         )
#'       )
#'     )
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-wrapper}
#'
#' @export
mj_wrapper <- function(...){
  htmltools::tag("mj-wrapper", list(...))
}

#' Group
#'
#' Allows you to prevent columns from stacking on mobile. To do so, wrap the columns inside
#' a mj-group tag, so they'll stay side by side on mobile.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_container(
#'       mj_group(
#'         mj_column(
#'           mj_text("Some text")
#'         ),
#'         mj_column(
#'           mj_text("Some more text")
#'         )
#'       )
#'     )
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-group}
#'
#' @export
mj_group <- function(...){
  htmltools::tag("mj-group", list(...))
}

#' Button
#'
#' Displays a customizable button.
#'
#' @inheritParams mj_ml
#' @param href href link.
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_container(
#'       mj_button("http://john-coene.com", "Button")
#'     )
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-button}
#'
#' @export
mj_button <- function(href = "#", ...){
  htmltools::tag("mj-button", list(href = href, ...))
}

#' Text
#'
#' This tag allows you to display text in your email.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_head(
#'     mj_attributes(
#'       mj_text(color = "blue")
#'     )
#'   ),
#'   mj_body(
#'     mj_container(
#'       mj_section(
#'         mj_column(
#'           mj_text("Some blue text")
#'         )
#'       )
#'     )
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-text}
#'
#' @export
mj_text <- function(...){
  htmltools::tag("mj-text", list(...))
}

#' Divider
#'
#' Displays a horizontal divider that can be customized like a HTML border.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_text("Some text"),
#'     mj_divider(),
#'     mj_text("The rest of the body")
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-divider}
#'
#' @export
mj_divider <- function(...){
  htmltools::tag("mj-divider", list(...))
}

#' Spacer
#'
#' Displays a blank space.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_divider(),
#'     mj_text("Some text"),
#'     mj_spacer(),
#'     mj_text("Some more text")
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-spacer}
#'
#' @export
mj_spacer <- function(...){
  htmltools::tag("mj-spacer", list(...))
}

#' Table
#'
#' This tag allows you to display table and filled it with data.
#'
#' @param df a \code{data.frame}.
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_column(
#'       mj_table(mtcars)
#'     )
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-table}
#'
#' @export
mj_table <- function(df){
  htmltools::tag("ml-table", list(
    knitr::kable(df, format = "html")
  ))
}

#' Raw
#'
#' Displays raw HTML that is not going to be parsed by the MJML engine.
#' Anything left inside this tag should be raw, responsive HTML.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_column(
#'       mj_raw("<h1>Raw HTML</h1>")
#'     )
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-raw}
#'
#' @export
mj_raw <- function(...){
  htmltools::tag("mj-raw", list(...))
}

#' Location
#'
#' Display a Google Maps location link.
#'
#' @inheritParams mj_ml
#' @param address address.
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_column(
#'       mj_location("Times Square")
#'     )
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-location}
#'
#' @export
mj_location <- function(address, ...){
  htmltools::tag("mj-location", list(address = address, ...))
}

