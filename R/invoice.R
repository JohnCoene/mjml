#' Invoice
#'
#' Display a table of items with calculated total price.
#'
#' @inheritParams mj_ml
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_container(
#'       mj_section(
#'         mj_column(
#'           mj_invoice(
#'             format = "0,00.00€",
#'             intl = "name:Product Name",
#'             mj_invoice_item(name = "TV", price = "549€", quantity = "1"),
#'             mj_invoice_item(name = "DVD - Iron Man II", price = "22.99€", quantity = "2")
#'           )
#'         )
#'       )
#'     )
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://mjml.io/documentation/#mjml-invoice}
#'
#' @rdname invoice
#' @export
mj_invoice <- function(...){
  htmltools::tag("mj-invoice", list(...))
}

#' @rdname invoice
#' @export
mj_invoice_item <- function(...){
  htmltools::tag("mj-invoice-item", list(...))
}
