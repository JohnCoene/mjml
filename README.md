[![Travis-CI Build Status](https://travis-ci.org/JohnCoene/mjml.svg?branch=master)](https://travis-ci.org/JohnCoene/mjml)

# mjml

Easily create responsive emails with [MJML](https://mjml.io/).

- [mjml](#mjml)
	- [Install](#install)
	- [Templates](#templates)
	- [Example](#example)

## Install

Install the package.

``` r
# install.packages("remotes")
remotes::install_github("JohnCoene/mjml")
```

Installs [MJML](https://mjml.io/) _globally_, this should only be run once on your machine.

```r
library(mjml)

install_mjml()
```

## Templates

Insert templates with RStudio addin.

* `Allura`
* `Happy New Year`
* `Card`
* `Proof`
* `Droids`

## Example

See installation.

```r
library(mjml)

# create email
email <- mj_ml(
  mj_head(
    mj_preview("Preview text")
  ),
  mj_body(
    mj_container(
      mj_section(
        mj_column(
          width = "20%",
          mj_text("Content of the first column")
        ),
        mj_column(
          width = "80%",
          mj_text("Content of the second, wider, column")
        )
      ),
      mj_section(
        mj_column(
          mj_image(
						paste0(
							"https://media.vanityfair.com/photos/",
              "54cbf3da998d4de83ba3602a/master/w_960,",
              "c_limit/image.jpg"
						)
          )
        )
      )
    )
  )
) 

# save the email
mj_save(email, "email.html")
```

Send email with [sendmailR](https://CRAN.R-project.org/package=sendmailR).

```r
library(sendmailR)

message <- readLines("email.html")
msg <- mime_part(message)
msg[["headers"]][["Content-Type"]] <- "text/html"

sendmail(
  from = "jean-philippe.coene@weforum.org",
  to = c("jean-philippe.coene@weforum.org"),
  subject = "testing", 
  msg = msg,
  control = list(
    smtpServer = "mail.weforum.org"
  )
)
```
