% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shannon.R
\name{shannon_entropy}
\alias{shannon_entropy}
\title{Shannon Entropy}
\usage{
shannon_entropy(p, b = 2)
}
\arguments{
\item{p}{Dist specifying the distribution.}

\item{b}{Numeric giving the base of the logarithm.}
}
\value{
Numeric giving the Shannon entropy of the distribution.
}
\description{
Compute the base-\code{b} Shannon entropy of the distribution \code{p}.
}
\examples{
d <- Dist(c(1, 1, 1, 1))
shannon_entropy(d)          # 2.0
shannon_entropy(d, 4)       # 1.0

d <- Dist(c(2, 1))
shannon_entropy(d)          # 0.9182958
shannon_entropy(d, b = 3)   # 0.5793802
}
