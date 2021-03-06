% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blackbox.R
\name{black_box}
\alias{black_box}
\title{Black Box}
\usage{
black_box(series, l, r = NULL, s = NULL)
}
\arguments{
\item{series}{Vector or Matrix of the time series to black-box.}

\item{l}{Numeric giving the number of sources in the collection.}

\item{r}{Vector giving the history lengths.}

\item{s}{Vector giving the future lengths.}
}
\value{
Vector or Matrix giving the black-boxed time series.
}
\description{
Black-box time series from a collection of \code{l} sources where each
series has the same number of time steps, same number of initial conditions,
and possibly different bases into a single time series. The base of the
resulting time series is given by the product of the bases of each time
series in the collection. Black-boxing can be performed in time by
providing history lengths \code{r} and future lengths through \code{s}.
}
\examples{
# Black-box two time series with no history or futures
xs      <- matrix(0, nrow = 8, ncol = 2)
xs[, 1] <- c(0, 1, 1, 0, 1, 0, 0, 1)
xs[, 2] <- c(1, 0, 0, 1, 1, 0, 1, 0)
black_box(xs, l = 2)                                   # c(1 2 2 1 3 0 1 2)

# Black-box two time series with histories and futures:
black_box(xs, l = 2, r = c(2, 1), s = c(0, 1))         # c(4 13 11 6 9 2)

# Black-box a single time series in time with history length 2
xs <- c(0, 1, 1, 0, 1, 0, 0, 1)
black_box(xs, l = 1, r = 2)                            # c(1 3 2 1 2 0 1)
}
