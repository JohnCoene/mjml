#' Template
#'
#' Responsive email templates.
#'
#' @section Templates:
#' \itemize{
#'   \item{\code{mj_template_allura} {\href{Allura template}{https://mjml.io/try-it-live/templates/black-friday}}}
#'   \item{\code{mj_template_hny} {\href{Happy New Year template}{https://mjml.io/try-it-live/templates/happy-new-year}}}
#'   \item{\code{mj_template_card} {\href{Happy New Year template}{https://mjml.io/try-it-live/templates/card}}}
#' }
#'
#' @rdname template
#' @export
mj_template_allura <- function(){

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
mj_template_hny <- function(){
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

#' @rdname template
#' @export
mj_template_card <- function(){

  '
  mj_ml(

    mj_head(
      mj_title("Say hello to card"),
      mj_font(
        name = "Roboto",
        href = "https://fonts.googleapis.com/css?family=Montserrat:300,400,500"
      ),
      mj_attributes(
        mj_all(`font-family` = "Montserrat, Helvetica, Arial, sans-serif"),
        mj_text(`font-weight` = "400", `font-size` = "16", color = "#000000", `line-height` = "24px"),
        mj_section(padding = 0)
      )
    ),

    mj_body(
      mj_container(
        `background-color` = "#F2F2F2",
        mj_section(
          padding = "10px 0 20px 0",
          mj_column(
            mj_text(
              align = "center",
              color = "#9B9B9B",
              `font-size` = "11px",
              "Writing A Good Headline For Your Advertisement"
            )
          )
        ),
        mj_section(
          padding = "20px 20px 0 20px",
          `background-color` = "#FFFFFF",
          mj_column(
            width = "35%",
            mj_text(
              align = "left",
              `font-size` = "20",
              `font-weight` = "500",
              "// BR&amp;AND"
            )
          ),
          mj_column(
            width = "65%",
            mj_text(
              align = "right",
              `font-size` = "11",
              htmltools::a(
                href = "#",
                style = "color: #000000; text-decoration: none;",
                "HOME"
              ),
              "&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;",
              htmltools::a(
                href = "#",
                style = "color: #000000; text-decoration: none;",
                "SERVICE"
              ),
              "&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;",
              htmltools::a(
                href = "#",
                style = "color: #000000; text-decoration: none;",
                "THIRD"
              )
            )
          )
        ),
        mj_section(
          padding = "20px 20px 0 20px",
          `background-color` = "#FFFFFF",
          mj_column(
            mj_text(
              align = "center",
              `font-weight` = "300",
              padding = "30px 40px 10px 40px",
              `font-size` = "32px",
              `line-height` = "40x",
              color = "#5FA91D",
              "Free Advertising For Your Online Business."
            )
          )
        ),
        mj_section(
          padding = "10px 20px",
          `background-color` = "#FFFFFF",
          mj_column(
            mj_divider(width = "30px", `border-width` = "3px", `border-color` = "#9B9B9B")
          )
        ),
        mj_section(
          padding = "0 20px 20px 20px",
          `background-color` = "#FFFFFF",
          mj_column(
            width = "80%",
            mj_text(
              align = "center", `padding-top` = "10px", `font-weight` = "500", padding = "0",
              "A Right Media Mix Can Make The Difference."
            )
          )
        ),
        mj_section(
          `background-url` = "http://nimus.de/share/tpl-card/bg.jpg",
          `vertical-align` = "middle",
          `background-size` = "cover",
          `background-repeat` = "no-repeat",
          mj_column(
            width = "100%",
            mj_image(
              src = "http://nimus.de/share/tpl-card/lineshadow.png",
              alt = "",
              align = "center",
              border = "none",
              padding = "0"
            ),
            mj_text(
              align = "center", padding = "50px 40px 0 40px", `font-weight` = "300", padding = "0",
              paste("Marketers/advertisers usually focus their efforts on the people responsible for making the purchase.",
                    "In many cases, this is an effective approach but in other cases it can make for a totally useless",
                    "marketing campaign.")
            ),
            mj_button(
              align = "center",
              `background-color` = "#5FA91D",
              color = "#FFFFFF",
              `border-radius` = "2px",
              href = "#",
              `inner-padding` = "15px 30px",
              `padding-bottom` = "100",
              `padding-top` = "20",
              "CALL TO ACTION"
            )
          )
        ),
        mj_section(
          padding = "50px 0 0 0",
          `background-color` = "#FFFFFF",
          mj_column(
            mj_image(
              src = "http://nimus.de/share/tpl-card/bottom.png",
              alt = "bottom border",
              align = "center",
              border = "none",
              padding = "0"
            )
          )
        ),
        mj_section(
          padding = "10px 0 20px 0",
          mj_column(
            mj_text(
              align = "center",
              color = "#9B9B9B",
              `font-size` = "11px",
              htmltools::a(
                href = "#",
                style = "color: #9B9B9B;",
                "Unsubscribe"
              ),
              "from this newsletter",
              htmltools::br(),
              "52 Edison Court Suite 259 / East Aidabury / Cambodi",
              htmltools::br(),
              htmltools::a(
                href = "#",
                style = "color: #9B9B9B; text-decoration:none;",
                "Made by svenhaustein.de"
              )
            )
          )
        )
      )
    )
  )' -> template

  rstudioapi::insertText(template)
}
