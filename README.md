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

Installs [MJML](https://mjml.io/) _globally_

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
mj_ml(
  mj_head(
    mj_preview("Preview text")
  ),
  mj_body(
    mj_container(
      mj_section(
        mj_column(
          width = "20%",
          mj_text("First column")
        ),
        mj_column(
          width = "80%",
          mj_text("Second column")
        )
      ),
      mj_section(
        mj_column(
          mj_image(paste0("https://media.vanityfair.com/photos/",
                          "54cbf3da998d4de83ba3602a/master/w_960,",
                          "c_limit/image.jpg")
          )
        )
      ),
      mj_section(
        mj_column(
          mj_chart(
            chd = "t:10,20,30|15,25,35"
          )
        )
      )
    )
  )
) %>% 
  mj_send(
    "me@gmail.com", 
    "him@gmail.com",
    "MJML Email",
    smtp = list(
      host.name = "smtp.gmail.com", 
      port = 465, 
      user.name = "me", 
      passwd = "pwd", 
      ssl = TRUE
    )
  )
```
