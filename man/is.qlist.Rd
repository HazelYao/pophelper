% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pophelper.R
\name{is.qlist}
\alias{is.qlist}
\title{Verify if a qlist is formatted correctly.}
\usage{
is.qlist(qlist = NULL, warn = TRUE)
}
\arguments{
\item{qlist}{A qlist object.}

\item{warn}{A logical indicating if a warning must be printed to screen.}
}
\value{
A logical TRUE or FALSE depending on if the list meets critical qlist 
requirements. For non-critical issues, a warning is printed if \code{warn=TRUE}.
}
\description{
Verify if a qlist is formatted correctly.
}
