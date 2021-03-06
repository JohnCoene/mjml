% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/body.R
\name{mj_button}
\alias{mj_button}
\title{Button}
\usage{
mj_button(href = "#", ...)
}
\arguments{
\item{href}{href link.}

\item{...}{Unnamed items that comprise this list of MJML tags.}
}
\description{
Displays a customizable button.
}
\examples{
mj_ml(
  mj_body(
    mj_container(
      mj_button("http://john-coene.com", "Button")
    )
  )
)

}
\seealso{
\href{official documentation}{https://mjml.io/documentation/#mjml-button}
}
