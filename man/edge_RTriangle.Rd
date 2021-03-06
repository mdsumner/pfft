% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pfft.R
\name{edge_RTriangle}
\alias{edge_RTriangle}
\title{Triangles}
\usage{
edge_RTriangle(x, ...)
}
\arguments{
\item{x}{PATH}

\item{...}{arguments passed to `RTriangle::triangulate`}
}
\value{
RTriangle triangulation
}
\description{
Build triangles from PATH
}
\details{
Input edges in the form of `silicate::PATH` and return a RTriangle object.
}
\examples{
data("minimal_mesh", package = "silicate")
library(RTriangle)
mm <- silicate::PATH(minimal_mesh)
plot(edge_RTriangle(mm), asp = 1)
plot(edge_RTriangle(mm, D= TRUE), asp = 1)
}
