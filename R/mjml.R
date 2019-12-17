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
#' @param path Path to mjml installation, if \code{NULL} attempts to find
#' the path with \code{\link{find_mjml}}.
#'
#' @section Functions:
#' \itemize{
#'   \item{\code{mj_convert} }{Convert to \code{.html}.}
#'   \item{\code{mj_validate_mjml} }{Validate \code{.mjml} file.}
#'   \item{\code{mj_sendmailr} }{Convert mjml to sendmailR mimepart.}
#' }
#'
#' @examples
#' email <- mj_ml(
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
#' ) 
#' 
#' \dontrun{html <- mj_convert(email)}
#'
#' @return Path to \code{output}.
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#command-line-interface}
#'
#' @name save
#' @export
mj_convert <- function(mjml, output = NULL, path = NULL){
  if(missing(mjml))
    stop("missing mjml")
  
  if(is.null(path))
    path <- find_mjml()
  
  # create temp files
  if(is.null(output))
    output <- tempfile(fileext = ".html")

  temp_mjml <- tempfile(fileext = ".mjml")

  out <- mj_save_mjml(mjml, temp_mjml)
  out <- mj_convert_html(temp_mjml, output, path = path)

  lines <- suppressWarnings(readLines(output))
  lines <- paste0(lines, collapse = "\n")
  invisible(lines)
}


#' @rdname save
#' @export
mj_validate_mjml <- function(input, path = NULL){
  if(missing(input))
    stop("missing input")

  if(is.null(path))
    path <- find_mjml()
  arguments <- paste("--validate", input)
  system2(path, args = arguments)
  input
}

#' @rdname save
#' @export
mj_sendmailr <- function(mjml, path = NULL){
  email <- mj_convert(mjml)
  email <- sendmailR::mime_part(email)
  email[["headers"]][["Content-Type"]] <- "text/html"
  return(email)
}

mj_convert_html <- function(input, output, path = NULL){
  if(missing(input) || missing(output))
    stop("missing input or output")

  if(is.null(path))
    path <- find_mjml()
  
  arguments <- paste(input, "-o", output)
  system2(path, args = arguments)
  output
}

mj_save_mjml <- function(mjml, output){
  if(missing(mjml) || missing(output))
    stop("missing mjml or output")
  fileConn <- file(output)
  writeLines(as.character(mjml), fileConn)
  close(fileConn)
  output
}

#' Install & Find
#'
#' Install or find local installation of MJML.
#'
#' @examples
#' \dontrun{
#' install_mjml()
#' }
#'
#' @rdname set
#' @export
install_mjml <- function(){
	system2("npm", args = "install mjml --global")
}


#' Find MJML
#' 
#' Attempts to find the path to MJML
#' 
#' @export
find_mjml <- function(){
  path <- Sys.which("mjml")
  if(path == "")
    stop("Cannot find path mjml, see `install_mjml`")
  return(path)
}