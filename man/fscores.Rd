% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scoring.R
\name{fscores}
\alias{fscores}
\title{Computing EAP scores}
\usage{
fscores(
  data,
  fit,
  dimension = rep(0, ncol(data)),
  discrete = rep(FALSE, ncol(data)),
  normal = TRUE,
  control = list()
)
}
\arguments{
\item{data}{data to be scored}

\item{fit}{the function return from fitting a \code{spfa} model.}

\item{dimension}{a vector of integers containing indicators of the latent factor. The default is rep(0, ncol(data)) indicating all item loads on the same latent factor.}

\item{discrete}{a vector of \code{TRUE} or \code{FALSE} indicating whether the item is discrete with \code{TRUE} indicating the item is a discrete variable. The length of the vector should be the same as the number of columns of the input data.}

\item{normal}{a logical value \code{TRUE} or \code{FALSE} indicating which density is used to rescale y.}

\item{control}{a list of technical control variables. See \code{\link{spfa}}.}
}
\value{
EAP scores for the fitted spfa model and reliability
}
\description{
Computing EAP scores
}
\examples{
RT <- spfa::simdata[,1:8]
myeaps <- fscores(data = RT, fit = spfa::spfa_example, 
dimension = rep( 0, ncol(RT)), discrete = rep(FALSE, ncol(RT) ))
}
