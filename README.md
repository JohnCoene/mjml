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
              "https://www.r-project.org/Rlogo.png"
            )
          )
        )
      )
    )
  )
)
```

Send email with [sendmailR](https://CRAN.R-project.org/package=sendmailR).

```r
library(sendmailR)

msg <- mj_sendmailr(email)

sendmail(
  from = "jcoenep@gmail.com",
  to = "jcoenep@gmail.com",
  subject = "testing", 
  msg = msg,
  control = list(
    smtpServer = "mail.google.com"
  )
)
```
