#' Template
#'
#' Responsive email templates.
#'
#' @section Templates:
#' \itemize{
#'   \item{\code{mj_template_skeleton} }{Basic email skeleton}
#'   \item{\code{mj_template_allura} {\href{Allura template}{https://mjml.io/try-it-live/templates/black-friday}}}
#'   \item{\code{mj_template_hny} {\href{Happy New Year template}{https://mjml.io/try-it-live/templates/happy-new-year}}}
#'   \item{\code{mj_template_card} {\href{Happy New Year template}{https://mjml.io/try-it-live/templates/card}}}
#'   \item{\code{mj_template_proof} {\href{Proof template}{https://mjml.io/try-it-live/templates/proof}}}
#'   \item{\code{mj_template_droids} {\href{Droids template}{https://mjml.io/try-it-live/templates/sphero-droids}}}
#' }
#'
#' @seealso \href{official templates}{https://mjml.io/templates}
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
              "// BR&AND"
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

#' @rdname template
#' @export
mj_template_proof <- function(){

  '
  mj_ml(
    mj_body(
      mj_container(
        mj_section(
          mj_column(
            mj_image(
              width = "162", src = "http://i.imgur.com/6wwIX3R.png"
            )
          )
        ),
        mj_section(
          `background-color` = "#f3f3f3",
          mj_column(
            mj_image(
              width = "170", src = "http://i.imgur.com/nwNZ0TW.png"
            )
          ),
          mj_column(
            mj_text(
              `font-weight` = "bold",
              align = "justify",
              `font-size` = "24px",
              color = "#000",
              `font-family` = "helvetica",
              "Article Title"
            ),
            mj_text(
              align = "justify",
              `font-size` = "15px",
              color = "#000",
              `font-family` = "helvetica",
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet ipsum consequat."
            ),
            mj_button(
              align = "justify",
              `background-color` = "#8ccaca",
              `border-radius` = "40px",
              `font-family` = "helvetica",
              `font-size` = "12px",
              "READ MORE"
            )
          )
        ),
        mj_section(
          mj_column(
            mj_image(
              width = "165",
              src = "http://i.imgur.com/2aRBc7u.png"
            ),
            mj_text(
              `font-weight` = "bold",
              align = "center",
              `font-size` = "16px",
              color = "#000",
              `font-family` = "helvetica",
              "Article Title"
            ),
            mj_text(
              align = "justify",
              `font-size` = "13px",
              color = "#000",
              `font-family` = "helvetica",
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
            ),
            mj_button(
              `background-color` = "#8ccaca",
              `border-radius` = "40px",
              `font-family` = "helvetica",
              `font-size` = "12px",
              "READ MORE"
            )
          ),
          mj_column(
            mj_image(
              width = "165",
              src = "http://i.imgur.com/L7Q88fd.png"
            ),
            mj_text(
              `font-weight` = "bold",
              align = "center",
              `font-size` = "16px",
              color = "#000",
              `font-family` = "helvetica",
              "Article Title"
            ),
            mj_text(
              align = "justify",
              `font-size` = "13px",
              color = "#000",
              `font-family` = "helvetica",
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
            ),
            mj_button(
              `background-color` = "#8ccaca",
              `border-radius` = "40px",
              `font-family` = "helvetica",
              `font-size` = "12px",
              "READ MORE"
            )
          ),
          mj_column(
            mj_image(
              width = "165",
              src = "http://i.imgur.com/0NBMznR.png"
            ),
            mj_text(
              `font-weight` = "bold",
              align = "center",
              `font-size` = "16px",
              color = "#000",
              `font-family` = "helvetica",
              "Article Title"
            ),
            mj_text(
              align = "justify",
              `font-size` = "13px",
              color = "#000",
              `font-family` = "helvetica",
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
            ),
            mj_button(
              `background-color` = "#8ccaca",
              `border-radius` = "40px",
              `font-family` = "helvetica",
              `font-size` = "12px",
              "READ MORE"
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
mj_template_skeleton <- function(){

  '
  mj_ml(
    mj_head(
      mj_preview("PREVIEW"),
      mj_title("TITLE"),
      mj_font(
        href = "https://fonts.googleapis.com/css?family=Raleway",
        name = "Railway"
      )
    ),
    mj_body(
      mj_container(
        mj_section(
          mj_column(
            "FIRST SECTION"
          )
        ),
        mj_section(
          mj_column(
            "SECOND SECTION"
          )
        )
      )
    )
  )' -> template

  rstudioapi::insertText(template)
}

#' @rdname template
#' @export
mj_template_droids <- function(){

  '
  mj_ml(
    mj_head(
      mj_title("These are the Droids you\'re looking for")
    ),
    mj_body(
      mj_container(
        mj_section(
          `background-color` = "#000000",
          padding = "0",
          mj_column(
            mj_image(
              src = "https://dmmedia.sphero.com/email-marketing/Star-Wars/Star_Wars_Launch_Email_1_REAL_Hero.jpg",
              alt = "These Are The Droids You\'re Looking For",
              href = "https://www.youtube.com/sphero",
              width = "600",
              padding = "0"
            )
          )
        ),
        mj_section(
          `background-color` = "#000000",
          padding-top = "10",
          mj_column(
            mj_image(
              src = "https://dmmedia.sphero.com/email-marketing/Star-Wars/Star_Wars_Launch_Email_1_features.jpg",
              alt = "Featuring Authentic Movement, Holographic Simulation, Droid to Droid Experience, and Watch With Me",
              width = "600",
              padding = "0"
            )
          )
        ),
        mj_section(
          `background-color` = "#000000",
          `background-url` = "https://dmmedia.sphero.com/email-marketing/Star-Wars/Star_Wars_Launch_Email_1.r2BG.jpg",
          `background-repeat` = "no-repeat",
          `padding-top` = "80",
          `padding-bottom` = "0",
          `padding-left` = "20",
          width = "600",
          mj_column(
            mj_spacer(height = "15px"),
            mj_image(
              src = "https://dmmedia.sphero.com/email-marketing/Star-Wars/Star_Wars_Launch_Email_1_R2text.png",
              width = "196",
              alt = "Buy R2D2",
              href = "https://www.sphero.com/starwars/r2d2"
            ),
            mj_text(
              `font-size` = "14",
              `line-height` = "2",
              align = "left",
              color = "#ffffff",
              `font-family` = "Helvetica Neue",
              "This is the Droid you\'re looking for. R2-D2 is an Astromech Droid in the Rebel Alliance from a galaxy far, far away.... The specialized tech in R2-D2 is unlike any other Astromech Droid, making it as authentic as the trusty Artoo you\'ve come to know and love."
            ),
            mj_spacer(height = "5px"),
            mj_image(
              src = "https://dmmedia.sphero.com/email-marketing/Star-Wars/Star_Wars_Launch_Email_1_R2_button.png",
              width = "129",
              alt = "Buy R2-D2",
              href = "https://store.sphero.com/products/r2-d2"
            )
          ),
          mj_column(
            mj_spacer(height = "45px"),
            mj_image(
              src = "https://dmmedia.sphero.com/email-marketing/Star-Wars/Star_Wars_Launch_Email_1_R2-D2.png",
              href = "https://www.sphero.com/starwars/r2d2",
              alt = "Get the new R2-D2",
              width = "310",
              padding = "0"
            )
          )
        ),
        mj_section(
          `background-color` = "#000000",
          `background-url` = "https://dmmedia.sphero.com/email-marketing/Star-Wars/Star_Wars_Launch_Email_1REDbg.jpg",
          `background-repeat` = "no-repeat",
          `padding-top` = "30",
          `padding-left` = "20",
          width = "600",
          mj_column(
            mj_spacer(height = "37px"),
            mj_image(
              src = "https://dmmedia.sphero.com/email-marketing/Star-Wars/Star_Wars_Launch_Email_1_BB-9E-text.png",
              width = "196",
              alt = "Buy BB-9E",
              href = "https://www.sphero.com/starwars/bb9e"
            ),
            mj_text(
              `font-size` = "14",
              align = "left",
              color = "#ffffff",
              `line-height` = "2",
              `font-family` = "Helvetica Neue",
              "There\'s a new disturbance in the Force. BB-9E is a menacing Astromech Droid of the First Order. This vigilant and intimidating Droid is always on high alert. This is NOT the Droid you\'re looking for... it\'s the Droid that\'s looking for you."
            ),
            mj_spacer(height = "30px"),
            mj_image(
              src = "https://dmmedia.sphero.com/email-marketing/Star-Wars/Star_Wars_Launch_Email_1_BB-9E-button.png",
              width = "129",
              alt = "Buy BB-9E",
              href = "https://store.sphero.com/products/bb-9e"
            )
          ),
          mj_column(
            mj_spacer(height = "60px"),
            mj_image(
              src = "https://dmmedia.sphero.com/email-marketing/Star-Wars/Star_Wars_Launch_Email_1_bb9e.png",
              href = "https://www.sphero.com/starwars/bb9e",
              alt = "Get the new BB-9E",
              width = "310",
              padding = "0"
            )
          )
        ),
        mj_section(
          `background-color` = "#000000",
          `background-url` = "https://dmmedia.sphero.com/email-marketing/Star-Wars/Star_Wars_Launch_Email_1_OrangeBG.jpg",
          `background-repeat` = "no-repeat",
          `padding-top` = "0",
          `padding-left` = "20",
          width = "600",
          mj_column(
            mj_spacer(height = "85px"),
            mj_image(
              src = "https://dmmedia.sphero.com/email-marketing/Star-Wars/Star_Wars_Launch_Email_1_bb8-text.png",
              width = "196",
              alt = "Buy BB-8",
              href = "https://www.sphero.com/starwars/bb8"
            ),
            mj_text(
              `font-size` = "14",
              align = "left",
              color = "#ffffff",
              `line-height` = "2",
              `font-family` = "Helvetica Neue",
              "Orange and white. One of a kind. BB-8 is the loyal Astromech Droid of Resistance pilot Poe Dameron. The specially designed technology in this unique BB unit makes it invaluable to the Resistance. This Droid is full of features and will stop
            at nothing to complete its mission."
            ),
            mj_spacer(height = "50px"),
            mj_image(
              src = "https://dmmedia.sphero.com/email-marketing/Star-Wars/Star_Wars_Launch_Email_1_bb8-button.png",
              width = "129",
              alt = "Buy BB-8",
              href = "https://store.sphero.com/products/bb-8-with-trainer"
            )
          ),
          mj_column(
            mj_spacer(height = "60px"),
            mj_image(
              src = "https://dmmedia.sphero.com/email-marketing/Star-Wars/Star_Wars_Launch_Email_1_bb8.png",
              href = "https://www.sphero.com/starwars/bb8",
              alt = "Get the new BB-8",
              width = "155",
              padding = "0"
            )
          )
        ),
        mj_section(
          `background-color` = "#424143",
          `padding-right` = "10",
          `padding-top` = "0",
          `padding-bottom` = "0",
          mj_column(
            width = "33.33333333333333%"
          ),
          mj_column(
            width = "33.33333333333333%",
            mj_image(
              src = "https://dmmedia.sphero.com/email-marketing/Star-Wars/sphero-logo-bottom-gray.png",
              href = "https://www.sphero.com",
              width = "134",
              align = "center"
            )
          ),
          mj_column(
            width = "33.33333333333333%",
            mj_text(
              align = "center",
              color = "#ffffff",
              `font-size` = "8",
              "&copy; & &trade; Lucasfilm Ltd."
            )
          )
        )
      )
    )
  )' -> template

  rstudioapi::insertText(template)
}
