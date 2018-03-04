#' Send
#'
#' Send email via \link[mailR]{send.mail}.
#'
#' @param email,mjml Email full path or \code{\link{mj_ml}} object.
#' @param from From whom the mail message is (RFC2822 style address).
#' @param to Recipient of the message (vector of valid RFC2822 style addresses).
#' @param subject Subject line of message.
#' @param html A boolean indicating whether the body of the email should be parsed as HTML.
#' @param inline A boolean indicating whether images in the HTML file should be embedded inline.
#' @param authenticate A boolean variable to indicate whether authorization is required to connect to the SMTP server.
#' If set to \code{TRUE}, see details on parameters required in smtp parameter.
#' @param send A boolean indicating whether the email should be sent at the end of the function (default behaviour).
#' If set to \code{FALSE}, function returns the email object to the parent environment.
#' @param ... any other option to pass to \link[mailR]{send.mail}.
#'
#' @section Functions:
#' \itemize{
#'   \item{\code{mj_send_html} }{Send email from \code{.html} file as returned by \code{\link{mj_convert_html}}}
#'   \item{\code{mj_send} }{Send email}
#' }
#'
#' @examples
#' \dontrun{
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
#'   mj_save("email.html") %>%
#'   mj_send_html("me@@gmail.com", "him@@gmail.com", "MJML email",
#'                smtp = list(host.name = "smtp.gmail.com",
#'                            port = 465,
#'                            user.name = "gmail_username",
#'                            passwd = "password",
#'                            ssl = TRUE)
#'                )
#' }
#'
#' @rdname send
#' @export
mj_send_html <- function(email, from, to, subject, html = TRUE, inline = FALSE, authenticate = TRUE,
                         send = TRUE, ...){
  message <- readLines(email)
  message <- paste0(message, collapse = "")
  mailR::send.mail(
    from, to,
    subject,
    body = email,
    html = html,
    inline = inline,
    authenticate = authenticate,
    send = send,
    ...
  )
}

#' @rdname send
#' @export
mj_send <- function(mjml, from, to, subject, html = TRUE, inline = TRUE, authenticate = TRUE,
                    send = TRUE, ...){

  temp_html <- tempfile(fileext = ".html")
  out_html <- mj_save(mjml, temp_html)

  mj_send_html(temp_html, from, to, subject, html, inline, authenticate,
               send, ...)
  unlink("temp_html", recursive = TRUE)
}
