% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/carousel.R
\name{mj_carousel}
\alias{mj_carousel}
\alias{mj_carousel_image}
\title{Carousel}
\usage{
mj_carousel(...)

mj_carousel_image(src, ...)
}
\arguments{
\item{...}{Unnamed items that comprise this list of MJML tags.}

\item{src}{image source.}
}
\description{
The first MJML interactive component, it displays a gallery of images or "carousel".
Readers can interact by hovering and clicking on thumbnails depending on the email client they use.
}
\examples{
mj_ml(
  mj_body(
    mj_column(
      mj_carousel(
        mj_carousel_image(paste0("https://media.vanityfair.com/photos/",
                                 "54cbf3da998d4de83ba3602a/master/",
                                 "w_960,c_limit/image.jpg")),
        mj_carousel_image(paste0("https://media.vanityfair.com/photos/",
                                 "54cbf3dafde9250a6c402ed2/master/",
                                 "w_690,c_limit/image.jpg"))
      )
    )
  )
)

}
\seealso{
\href{official documentation}{https://mjml.io/documentation/#mjml-carousel}
}
