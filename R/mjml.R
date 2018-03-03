#' Standard components
#'
#' Core components of an MJML email.
#'
#' @param ... Unnamed items that comprise this list of MJML tags.
#'
#' @section Functions:
#' \itemize{
#'   \item{\code{mj_ml} }{Core parent, equivalent to \code{<html></html>}.}
#'   \item{\code{mj_head} }{Contains everything related to the document such as style and meta elements.}
#'   \item{\code{mj_body} }{Contains everything related to the content of your email..}
#'   \item{\code{mj_include} }{This tag allows you to include external files.}
#' }
#'
#' @examples
#' mj_ml(
#'   mj_head(
#'     mj_text("The header")
#'   ),
#'   mj_body(
#'     mj_text("The body")
#'   )
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

#' Save
#'
#' Save your email with \code{.mjml} extension.
#'
#' @param mjml MJML email as returned by \code{\link{mj_ml}}.
#' @param input,output input and output files.
#' @param ... Any other option to be passed to \code{\link{writeLines}}.
#'
#' @section Functions:
#' \itemize{
#'   \item{\code{mj_save} }{Save as \code{.mjml}}
#'   \item{\code{mj_validate} }{Validate \code{.mjml} file}
#'   \item{\code{mj_convert} }{Convert \code{.mjml} to \code{.html}}
#' }
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_container(
#'       mj_section(
#'         mj_column("First column"),
#'         mj_column("Second column")
#'       ),
#'       mj_section(
#'         mj_chart(
#'           chd = "t:10,20,30|15,25,35"
#'         )
#'       )
#'     )
#'   )
#' ) %>%
#'   mj_save("email.mjml") %>% # save as .mjml
#'   mj_validate() %>% # validate
#'   mj_convert("email.html") # save as .html
#'
#' @rdname save
#' @export
mj_save <- function(mjml, output, ...){
  fileConn <- file(output)
  writeLines(as.character(mjml), fileConn)
  close(fileConn)
  output
}

#' @rdname save
#' @export
mj_validate <- function(input){
  arguments <- paste("--validate", input)
  system2("mjml", args = arguments)
  input
}

#' @rdname save
#' @export
mj_convert <- function(input, output){
  arguments <- paste(input, "--output", output)
  system2("mjml", args = arguments)
  output
}
