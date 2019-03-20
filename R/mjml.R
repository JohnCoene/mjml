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
#'   mj_body(
#'     mj_column(
#'       width = "20%",
#'       mj_text("First columns")
#'     ),
#'     mj_column(
#'       width = "80%",
#'       mj_text("The body")
#'     )
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
#'   \item{\code{mj_save_mjml} }{Save as \code{.mjml}}
#'   \item{\code{mj_validate_mjml} }{Validate \code{.mjml} file}
#'   \item{\code{mj_convert_html} }{Convert \code{.mjml} file to \code{.html}}
#'   \item{\code{mj_save} }{All of the above, outputs \code{.html}}
#' }
#'
#' @examples
#' mj_set("./node_modules/.bin/mjml")
#'
#' mj_ml(
#'   mj_body(
#'     mj_container(
#'       mj_section(
#'         mj_column(
#'           mj_text("First column")
#'         ),
#'         mj_column(
#'           mj_text("Second column")
#'         )
#'       ),
#'       mj_section(
#'         mj_column(
#'           mj_image(paste0("https://media.vanityfair.com/photos/",
#'                           "54cbf3da998d4de83ba3602a/master/w_960,",
#'                           "c_limit/image.jpg")
#'                    )
#'         )
#'       )
#'     )
#'   )
#' ) %>%
#'   mj_save("email.html")
#'
#' @return Path to \code{output}.
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#command-line-interface}
#'
#' @rdname save
#' @export
mj_save_mjml <- function(mjml, output, ...){
  if(missing(mjml) || missing(output))
    stop("missing mjml or output")
  fileConn <- file(output)
  writeLines(as.character(mjml), fileConn)
  close(fileConn)
  output
}

#' @rdname save
#' @export
mj_validate_mjml <- function(input){
  if(missing(input))
    stop("missing input")
  arguments <- paste("--validate", input)
  system2(Sys.getenv("MJML"), args = arguments)
  input
}

#' @rdname save
#' @export
mj_convert_html <- function(input, output){
  if(missing(input) || missing(output))
    stop("missing input or output")
  arguments <- paste(input, "--output", output)
  system2(Sys.getenv("MJML"), args = arguments)
  output
}

#' @rdname save
#' @export
mj_save <- function(mjml, output, ...){
  if(missing(mjml) || missing(output))
    stop("missing mjml or output")
  temp_mjml <- tempfile(fileext = ".mjml")
  out <- mj_save_mjml(mjml, temp_mjml)
  output <- mj_convert_html(out, output)
  unlink("temp_mjml", recursive = TRUE)
  output
}

#' Setup
#'
#' Set path to MJML.
#'
#' @param path Path to MJML.
#'
#' @examples
#' \dontrun{
#' install_mjml()
#' }
#'
#' @rdname set
#' @export
mj_set <- function(path){
  Sys.setenv("MJML" = path)
}

#' @rdname set
#' @export
mj_get <- function(){
  Sys.getenv("MJML")
}

#' @rdname set
#' @export
install_mjml <- function(){
	system2("npm", args = "install mjml --global")
}
