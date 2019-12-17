#' Chart
#'
#' @param cht chart type.
#' @param ... any other option, see \href{official documentation}{https://github.com/image-charts/mjml-chart}.
#'
#' @examples
#' mj_ml(
#'   mj_body(
#'     mj_container(
#'       mj_section(
#'         mj_column(
#'           mj_chart(
#'             chd = "t:10,20,30|15,25,35"
#'           )
#'         )
#'       )
#'     )
#'   )
#' )
#'
#' @seealso \href{official documentation}{https://github.com/image-charts/mjml-chart}
#'
#' @export
mj_chart <- function(cht = "bvg", ...){
  htmltools::tag("mj-chart", list(cht = cht, ...))
}
