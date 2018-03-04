#' Template
#'
#' Responsive email templates.
#'
#' @section Templates:
#' \itemize{
#'   \item{\code{mj_allura} {\href{Allura template}{https://mjml.io/try-it-live/templates/black-friday}}}
#'   \item{\code{mj_hny} {\href{Happy New Year template}{https://mjml.io/try-it-live/templates/happy-new-year}}}
#' }
#'
#' @rdname template
#' @export
mj_allura <- function(){

  '
  mj_ml(
    mj_body(
      mj_container(
        `background-color` = "#F4F4F4",
        color = "#55575d",
        `font-family` = "Arial, sans-serif",
        mj_section(
          `background-color` = "#000000",
          `background-repeat` = "no-repeat",
          `text-align` = "center",
          `vertical-align` = "top",
          mj_column(
            mj_image(
              align = "center",
              border = "none",
              `padding-bottom` = "30px",
              padding = "10px 25px",
              src = "http://5vph.mj.am/img/5vph/b/1g86w/0g67t.png",
              target = "_blank",
              title = "",
              width="180px"
            ),
            mj_text(
              align = "left",
              color = "#55575d",
              `font-family` = "Arial, sans-serif",
              `font-size` = "13px",
              `line-height` = "22px",
              `padding-bottom` ="0px",
              `padding-top` = "0px",
              padding = "10px 25px",
              htmltools::p(
                style = "line-height: 18px; margin: 10px 0; text-align: center;font-size:14px;color:#ffffff;font-family:\'Times New Roman\',Helvetica,Arial,sans-serif",
                "WOMEN&nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; MEN&nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; KIDS"
              )
            )
          )
        ),
        mj_section(
          `background-color` = "#000000",
          `background-repeat` = "no-repeat",
          `text-align` = "center",
          `vertical-align` = "top",
          padding = "0 0 0 0",
          mj_column(
            mj_image(
              align = "center",
              border = "none",
              `padding-bottom` = "0px",
              `padding-left` = "0px",
              `padding-right` = "0px",
              padding = "0px 25px",
              src = "http://5vph.mj.am/img/5vph/b/1g86w/0696u.jpeg",
              target = "_blank",
              title = "",
              width = "780px"
            )
          )
        ),
        mj_section(
          `background-color` = "#000000",
          `background-repeat` = "no-repeat",
          `text-align` = "center",
          `vertical-align` = "top",
          padding = "0 0 0 0",
          mj_column(
            mj_text(
              align = "left",
              color = "#55575d",
              `font-family` = "Arial, sans-serif",
              `font-size` = "13px",
              `line-height` = "22px",
              `padding-bottom` = "5px",
              `padding-top` = "25px",
              padding = "10px 25px",
              htmltools::p(
                style = "line-height: 60px; text-align: center; margin: 10px 0;font-size:55px;color:#fcfcfc;font-family:\'Times New Roman\',Helvetica,Arial,sans-serif",
                htmltools::tags$b(
                  "Black Friday"
                )
              )
            ),
            mj_text(
              align = "left",
              color = "#55575d",
              `font-family` = "Arial, sans-serif",
              `font-size` = "13px",
              `line-height` = "22px",
              `padding-bottom` = "20px",
              `padding-top` = "0px",
              padding = "10px 25px",
              htmltools::p(
                style = "line-height: 30px; text-align: center; margin: 10px 0;color:#f5f5f5;font-size:25px;font-family:\'Times New Roman\',Helvetica,Arial,sans-serif",
                htmltools::tags$b(
                  "Take an&nbsp; extra 50% off",
                  htmltools::br(),
                  htmltools::span(
                    style = "color:#ffffff;font-size:18px;font-family:\'Times New Roman\',Helvetica,Arial,sans-serif",
                    "Use code SALEONSALE* at checkout"
                  )
                )
              )
            )
          )
        ),
        mj_section(
          `background-color` = "#000000",
          `background-repeat` = "no-repeat",
          `text-align` = "center",
          `vertical-align` = "top",
          `padding-bottom` = "40px",
          padding = "0 0 0 0",
          mj_column(
            mj_button(
              `background-color` = "#ffffff",
              `border-radius` = "3px",
              `font-family` = "Times New Roman, Helvetica, Arial, sans-serif",
              `font-size` = "18px",
              `font-weight` = "normal",
              `inner-padding` = "10px 25px",
              `padding-bottom` = "30px",
              padding = "10px 25px",
              htmltools::span(
                style = "color:#212020",
                "Shop Now"
              )
            ),
            mj_text(
              align = "left",
              color = "#55575d",
              `font-family` = "Arial, sans-serif",
              `font-size` = "13px",
              `line-height` = "22px",
              `padding-bottom` = "0px",
              `padding-top` = "5px",
              padding = "10px 25px",
              htmltools::p(
                style = "line-height: 16px; text-align: center; margin: 10px 0;font-size:12px;color:#ffffff;font-family:\'Times New Roman\',Helvetica,Arial,sans-serif",
                "* Offer valid on Allura purchases on 17/29/11 at 11:59 pm. No price adjustments on previous&nbsp;",
                htmltools::span(
                  style = "color:#ffffff;font-family:\'Times New Roman\',Helvetica,Arial,sans-serif",
                  "purchases, offer limited to stock. Cannot be combined with any offer or promotion other than free."
                )
              )
            )
          )
        )
      )
    )
  )' -> template

  rstudioapi::insertText(template)
}

#' @rdname template
#' @export
mj_hny <- function(){
  '
  mj_ml(
    version = "3.3.3",
    mj_body(
      mj_container(
        `background-color` = "#F4F4F4",
        color = "#55575d",
        `font-family` = "Arial, sans-serif",
        mj_section(
          `background-color` = "#C1272D",
          `background-repeat` = "repeat",
          padding = "20px 0",
          `text-align` = "center",
          `vertical-align` = "top",
          mj_column(
            mj_image(
              align = "center",
              padding = "10px 25px",
              src = "http://gkq4.mjt.lu/img/gkq4/b/18rxz/1h3k4.png",
              width="128px"
            )
          )
        ),
        mj_section(
          `background-color` = "#ffffff",
          `background-repeat` = "repeat",
          padding = "20px 0",
          `text-align` = "center",
          `vertical-align` = "top",
          mj_column(
            mj_image(
              align = "center",
              padding = "10px 25px",
              src = "http://gkq4.mjt.lu/img/gkq4/b/18rxz/1h3s5.gif",
              width="600px"
            ),
            mj_image(
              align = "center",
              alt = "Happy New Year!",
              `container-background-color` = "#ffffff",
              padding = "10px 25px",
              src = "http://gkq4.mjt.lu/img/gkq4/b/18rxz/1hlvp.png",
              width="399px"
            )
          )
        ),
        mj_section(
          `background-color` = "#ffffff",
          `background-repeat` = "repeat",
          `background-size` = "auto",
          padding = "20px 0px 20px 0px",
          `text-align` = "center",
          `vertical-align` = "top",
          mj_column(
            mj_text(
              align = "center",
              color = "#55575d",
              `font-family` = "Arial, sans-serif",
              `font-size` = "14px",
              `line-height` = "28px",
              padding = "0px 25px 0px 25px",
              "New dreams, new hopes, new experiences and new joys, we wish you all the best for this New Year to come in 2018!"
            ),
            mj_image(
              align = "center",
              alt = "Best wishes from all the Clothes Team!",
              padding = "10px 25px",
              src = "http://gkq4.mjt.lu/img/gkq4/b/18rxz/1hlv8.png",
              width="142px"
            )
          )
        ),
        mj_section(
          `background-color` = "#C1272D",
          `background-repeat` = "repeat",
          padding = "20px 0",
          `text-align` = "center",
          `vertical-align` = "top",
          mj_column(
            mj_text(
              align = "center",
              color = "#ffffff",
              `font-family` = "Arial, sans-serif",
              `font-size` = "13px",
              `line-height` = "22px",
              padding = "10px 25px",
              "Simply created&nbsp;on&nbsp;",
              htmltools::a(
                style = "color:#ffffff",
                href = "http://www.mailjet.com",
                htmltools::tags$b(
                  "Mailjet Passport"
                )
              ),
              "Application"
            )
          )
        ),
        mj_section(
          `background-repeat` = "repeat",
          `background-size` = "auto",
          padding = "20px 0px 20px 0px",
          `text-align` = "center",
          `vertical-align` = "top",
          mj_column(
            mj_text(
              align = "center",
              color = "#55575d",
              `font-family` = "Arial, sans-serif",
              `font-size` = "11px",
              `line-height` = "22px",
              padding = "0px 20px",
              "[[DELIVERY_INFO]]"
            )
          )
        )
      )
    )
  )' -> template

  rstudioapi::insertText(template)
}
