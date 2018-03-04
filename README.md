[![Travis-CI Build Status](https://travis-ci.org/JohnCoene/mjml.svg?branch=master)](https://travis-ci.org/JohnCoene/mjml)

# mjml

Easily create responsive emails with [MJML](https://mjml.io/).

* [Install](#install)
* [Templates](#templates)
* [Example](#example)

## Install

Install the package.

``` r
devtools::install_github("JohnCoene/mjml")
```

Install [MJML](https://mjml.io/).

```bash
# Install with npm in a folder where you will use MJML
$> npm install mjml

# In the folder where you installed MJML you can now run:
$> ./node_modules/.bin/mjml -V
```

Optionally install [image chart](https://github.com/image-charts/mjml-chart) to use `ml_chart`.

```bash
$> npm install mjml-chart --save
```

## Templates

Inserts templates with RStudio addins.

* `Allura`
* `Happy New Year`
* `Card`
* `Proof`

## Example

```{r}
library(mjml)

mj_set("./node_modules/.bin/mjml") # path to MJML

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
          mj_text("First columns")
        ),
        mj_column(
          width = "80%",
          mj_text("The body")
        )
      ),
      mj_section(
        mj_column(
          mj_image(paste0("https://media.vanityfair.com/photos/",
                          "54cbf3da998d4de83ba3602a/master/w_960,c_limit/image.jpg")
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
