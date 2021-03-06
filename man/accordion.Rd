% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/accordion.R
\name{mj_accordion}
\alias{mj_accordion}
\alias{mj_accordion_element}
\alias{mj_accordion_title}
\alias{mj_accordion_text}
\title{Accordion}
\usage{
mj_accordion(...)

mj_accordion_element(...)

mj_accordion_title(...)

mj_accordion_text(...)
}
\arguments{
\item{...}{Unnamed items that comprise this list of MJML tags.}
}
\description{
An interactive MJML component to stack content in tabs, so the information is
collapsed and only the titles are visible. Readers can interact by clicking on
the tabs to reveal the content, providing a great experience on mobile devices
where space is scarce.
}
\section{Functions}{

\itemize{
  \item{\code{ml_accordion} }{Setup accordion.}
  \item{\code{mj_accordion_element} }{Accordion element.}
  \item{\code{ml_accordion_title} }{Accordion title.}
  \item{\code{ml_accordion_text} }{Accordion text.}
}
}

\examples{
mj_ml(
  mj_body(
    mj_container(
      mj_accordion(
        mj_accordion_element(
          mj_accordion_title("First element"),
          mj_accordion_text("Text of first element")
        ),
        mj_accordion_element(
          mj_accordion_title("Second element"),
          mj_accordion_text("Text of second element")
        )
      )
    )
  )
)

}
\seealso{
\href{official documentation}{https://mjml.io/documentation/#mjml-accordion}
}
